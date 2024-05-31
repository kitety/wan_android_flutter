import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
              width: double.infinity,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Container(
                    height: 80.h,
                    color: Colors.blue,
                  );
                },
                itemCount: 3,
                indicatorLayout: PageIndicatorLayout.NONE,
                autoplay: true,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => _listItemView(index),
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listItemView(int index) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(
              'https://picsum.photos/id/237/200/300',
              width: 30.r,
              height: 30.r,
            )
          ],
        ),
      ],
    );
  }
}
