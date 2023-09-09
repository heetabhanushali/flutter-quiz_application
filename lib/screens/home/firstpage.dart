import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70),
              child: Image.asset('assets/logo.png' , height: 500,),
            ),




            //SLIDER

            ActionSlider.custom(
              sliderBehavior: SliderBehavior.stretch,
              height: 60,
            
            
              backgroundColor: kDark,
              backgroundChild: Center(
                child: Text(
                  'Slide To Start Quiz' , style: TextStyle(
                    color: kSecondary.withOpacity(0.5),
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              backgroundBuilder: (context , state , child ) => ClipRRect(
                child: OverflowBox(
                  maxHeight: state.toggleSize.height,
                  maxWidth: state.standardSize.width,
                  minHeight: state.toggleSize.height,
                  minWidth: state.standardSize.width,
                  child: child!,
                ),
              ),
            
            
              toggleWidth: 70,
              foregroundChild: Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(Icons.arrow_forward_ios, color: kBackground, size: 30),
              ),
              foregroundBuilder: (context , state , child) => child!,
            
              action: (controller) async {
                await Future.delayed(const Duration(milliseconds: 500));
                Navigator.pushReplacementNamed(context, 'quiz');
              },
            ),
            
            
          ]
        ),
      ),
    );
  }
}