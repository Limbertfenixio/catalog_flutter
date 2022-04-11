import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilPackagePage extends StatelessWidget {
  const ScreenUtilPackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: PageWidget(),
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  const PageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  /*  height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 2, */
                  /* h: Adaptado al alto de la pantalla
                         w: Adaptado al ancho de la pantalla
                        sh, sw: Adapatado a la densidad del dispositivo 0.0 min - 1.0 max
                        sp: Adaptar tamano de la fuente a la pantalla
                        r: Adaptar según el menor de ancho o alto
                         */
                  height: 300.h,
                  width: 500.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2021/08/08/14/16/road-6531031__340.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  "Lorem Ipsum",
                  style:
                      TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting Industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
