import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResponsiveSizerPackagePage extends StatelessWidget {
  const ResponsiveSizerPackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) => Scaffold(
              appBar: AppBar(
                title: Text("Responsive Sizer Package"),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Container(
                    width: 100.w,
                    height: 100.h,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://cdn.pixabay.com/photo/2021/12/09/15/52/winter-6858401__340.png",
                          width: 50.w,
                          height: 50.h,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti qui animi nobis totam ut minima hic temporibus voluptatem nulla voluptatum debitis, quas esse ullam similique tempore, error, repellendus iste architecto.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
