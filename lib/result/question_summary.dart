import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (data['user_answer']==data['correct_answer'])? Colors.green[700] : Colors.red,
                    ),
                    child: Center(
                      child: Text(((data['question_index'] as int) +1).toString() , style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: kWhite
                      ),),
                    )
                  ),
          
                  SizedBox(width: 15,),
          
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String , style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 7,),
                        Text(data['user_answer'] as String , style: TextStyle(
                          color: (data['user_answer']==data['correct_answer'])? Colors.green[700] : Colors.red,
                          fontWeight: FontWeight.w600
                        ),),
                        Text(data['correct_answer'] as String),
                        SizedBox(height: 20,)
                      ],
                    ),
                  )
                ],
              );
            }).toList(),
        ),
      ),
    );
  }
}