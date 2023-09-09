import 'package:quiz_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/optionbutton.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<String> selectedAnswers =[];
  var i=1;

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

 
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    final current_question = questions;

    return Scaffold(
      backgroundColor: kDark,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 80),
        child: Column(
          children: [
            SizedBox(height: 10,),

            //NUMBER OF QUESTION
            Row(
              children: [
                SizedBox(width: 10,),

                SizedBox(
                  width: 50,
                  child: Text('$i/10' , style: TextStyle(
                    color: kWhite,
                    fontSize: 20
                  ),),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 10,
                  width: 320,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10)
                  ),

                  child: Row(
                    children: [
                      Container(
                        width: i*32,                      
                        decoration: BoxDecoration(
                          color: kSecondary,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),


            //QUESTION CONTAINER
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              width: size.width,
              decoration: BoxDecoration(
                color: kSecondary,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Question:',style: TextStyle(
                    color: kWhite,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20,),

                  Text(current_question[i-1].text , style: TextStyle(
                    fontSize: 20,
                    color: kDark,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),
            SizedBox(height: 30,),


            ...current_question[i-1].getShuffledAnswers().map((answer){
              return Column(
                children: [
                  OptionButton( 
                    answertext: answer, 
                    press: () { 
                      chooseAnswer(answer);
                      (i==10)?
                      setState(() {
                        Navigator.pushReplacementNamed(context, 'result', arguments: selectedAnswers);
                        selectedAnswers = [];
                      }):
                      setState(() {
                        i++;
                      });
                      
                    },
                  ),
                  SizedBox(height: 20,)
                ],
              );
            }),

          ],
        ),
      ),
    );
  }
}


