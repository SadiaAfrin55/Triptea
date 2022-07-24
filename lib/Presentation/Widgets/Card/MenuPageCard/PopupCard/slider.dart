
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class ImageSlider extends StatelessWidget {
  final _dotController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            //height: 344,
            child: PageView(
              controller: _dotController,
              children: [
                Image.asset('assets/images/milk.png',),
                Image.asset('assets/images/green.png'),
                Image.asset('assets/images/masala.png'),
              ],
            ),
          ),
          SizedBox(height: 7,),
          // dot indicators
          SmoothPageIndicator(
            controller: _dotController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.orange.shade400,
              dotColor: Colors.orange.shade200,
              dotHeight: 15,
              dotWidth: 15,
            ),
          ),
        ],
      ),
    );
  }
}
