import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sndbad_store/core/const/const_color.dart';

class typeProduct extends StatelessWidget {
 final String title;
  const typeProduct({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(title,style: TextStyle(
          fontSize: 14,
          fontFamily: GoogleFonts.alexandria().fontFamily,

        ),),
        Row(
          children: [
            Text('عرض الكل',style: TextStyle(
              fontSize: 16,
              color: Color(0xff222222),
            
            ),),
            Icon(Icons.arrow_forward_ios,color: ConstColor.secondryColor,),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(thickness: 1,color: Color(0xffEDEDED),),
            )),
            SizedBox(
              width: 80,
              child: Divider(color: ConstColor.secondryColor,thickness: 2,))
            // ),
            // SizedBox(
            //   width: double.infinity,
            //   child: Divider(
            //     color: ConstColor.secondryColor,
                
            //   ),
            // )
            
          ],
        )
      ],
    );
  }
}