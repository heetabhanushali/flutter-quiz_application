import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result/question_summary.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  late List<String> selectedAnswers;
  late List<Map<String, Object>> summaryData;

  @override
  void initState() {
    super.initState();
  }

   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    selectedAnswers = ModalRoute.of(context)!.settings.arguments as List<String>;
    summaryData = getSummaryData();
  }

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for(var i=0; i<10;i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': selectedAnswers[i]

      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final total = questions.length;
    final correct = summaryData.where((data){
      return data['user_answer']==data['correct_answer'];
    }).length;

    return Scaffold(
      backgroundColor: kDark,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30 , horizontal: 20),
          width: size.width*0.85,
          height: size.height*0.8,
          decoration: BoxDecoration(
            color: kBackground,
            borderRadius: BorderRadius.circular(35)
          ),
          child: Column(
            children: [
              
              Text('You Answered $correct out of $total Questions Correctly!!' , style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 35,),

              const Text('List of answers and questions:'),
              SizedBox(height: 15,),

              QuestionsSummary(summaryData: summaryData),


              SizedBox(height: 30,),

              TextButton.icon(
                onPressed: (){
                  Navigator.pushReplacementNamed(context,'first');
                }, 
                icon: const Icon(Icons.restart_alt , color: kDark, size: 30,), 
                label: const Text('Restart Quiz' , style: TextStyle(
                  color: kDark,
                  fontSize: 20
                ),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}