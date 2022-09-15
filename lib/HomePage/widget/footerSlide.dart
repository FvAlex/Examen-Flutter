import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class footerSlide extends StatefulWidget {
  const footerSlide({Key? key}) : super(key: key);

  @override
  State<footerSlide> createState() => _footerSlide();
}

class _footerSlide extends State<footerSlide> {
  final CarouselController _controller = CarouselController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  void callback(int index, CarouselPageChangedReason? reason) {
    if (index != _currentPage && reason == null) {
      setState(() {
        _currentPage = index;
        _controller.animateToPage(_currentPage);
      });
    } else if (reason == CarouselPageChangedReason.manual) {
      setState(() {
        _currentPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.341,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: new EdgeInsets.only(top: 8),

              width: MediaQuery.of(context).size.width,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Explore Courses",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 260,
                ),
                IconButton(
                  onPressed: () => print("hello"),
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            Container(
              padding: new EdgeInsets.only(top: 10),
              child: CarouselSlider(
                carouselController: _controller,
                items: List.generate(4, (index) {
                  return Container(
                    width: 450,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            width: 175,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60.0),
                                topLeft: Radius.circular(60.0),
                                bottomRight: Radius.circular(60.0),
                                bottomLeft: Radius.circular(60.0),
                              ),
                            ))),
                  );
                }),
                options: CarouselOptions(
                  onPageChanged: (index, reason) => callback(index, reason),
                  initialPage: 1,
                  height: 170,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                  children: List.generate(
                4,
                (index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: ItemPage(id: index));
                },
              )),
            )
          ],
        ));
  }

  Widget ItemPage({required int id}) {
    return Ink(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: (_currentPage == id) ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.circular(60),
      ),
      child: InkWell(
        onTap: () => callback(id, null),
        splashColor: (_currentPage != id) ? Colors.black : Colors.transparent,
        borderRadius: BorderRadius.circular(60),
      ),
    );
  }
}
