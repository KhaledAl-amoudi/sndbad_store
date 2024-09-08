import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sndbad_store/core/const/const_color.dart';


class ListviewCategoryItem extends StatelessWidget {
  final bool isActive ;
  const ListviewCategoryItem({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive==true? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height:80.h ,
        width: 80.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        //   boxShadow: [
        //     BoxShadow(
        //    color: Colors.red,
        // blurRadius: 4,
        // offset: Offset(4, 8)
        //     )
        //   ],
          border: Border.all(
            color: ConstColor.secondryColor,
            width: 1.w
          ),
        ),
        child:SvgPicture.asset('assets/image/light.svg',height: 48.24,) ,
      ),
    ):CircularProgressIndicator();
  }
}