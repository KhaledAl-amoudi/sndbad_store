import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sndbad_store/main.dart';

class SectionWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  const SectionWidget({super.key, required this.iconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffcfcccc))
      ),
     child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath,height: 30.h,),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(title,style: const TextStyle(
              fontSize: 16,
              color: Color(0xff666666),
            ),),
          )

      ],)
    );
  }
}