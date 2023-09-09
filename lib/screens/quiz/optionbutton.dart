import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key, required this.answertext, required this.press,    
  });

  final String answertext;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return FilledButton(
      onPressed: press,
      style: TextButton.styleFrom(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.transparent,
        fixedSize: Size(size.width, 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: BorderSide(width: 2 , color: kSecondary)
      ), 
      child: Text(answertext , style: TextStyle(
        color: kBackground,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),)
    );
  }
}