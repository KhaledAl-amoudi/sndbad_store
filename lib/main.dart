import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sndbad_store/core/view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}
//hbv
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   ScreenUtilInit(
      designSize: const Size(428,869 ),
      splitScreenMode: false,
     minTextAdapt: true,
     enableScaleWH: ()=>true,
     enableScaleText: ()=>true,
      builder: (context,child){
     return MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
          fontFamily: GoogleFonts.almarai().fontFamily,
          
        ),
       home: child
       
             );
             
      },
      child: const HomeScreen(),
    );
      }
    
      
    

    
  }
