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
    return Container(
      margin: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w, bottom: 5.h),
      padding: EdgeInsets.only(top: 8.h, left: 15.w, right: 15.w, bottom: 8.h),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 0.5.r),
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.r),
                child: Image.network(
                  'https://picsum.photos/id/237/200/300',
                  width: 40.r,
                  height: 40.r,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                '作者',
                style: TextStyle(color: Colors.black),
              ),
              const Spacer(),
              Text(
                '2024-05-12 13:13',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.sp,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                '置顶',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            'Get a grayscale image by appending ?grayscale to the end of the url.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.sp,
            ),
          ),
          Row(
            children: [
              Text(
                '分类',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                ),
              ),
              const Spacer(),
              Image.network(
                'https://picsum.photos/id/237/200/300',
                width: 30.r,
                height: 30.r,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
