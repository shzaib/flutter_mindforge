import 'package:flutter/material.dart';
import 'package:mindforge/models/question_model.dart';
import 'package:mindforge/widgets/next_button.dart';
import 'package:mindforge/widgets/question_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MQuestion> questions = [
    MQuestion(
      id: '10',
      title: 'What is 2 + 2',
      options: {'5': false, '30': false, '4': true, '10': false},
    ),
    MQuestion(
      id: '11',
      title: 'What is 20 + 10',
      options: {'5': false, '30': true, '4': false, '10': false},
    ),
  ];
  int index = 0;
  void nextQuestion() {
    if (index == questions.length - 1) {
      return;
    } else {
      setState(
        () {
          index++;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 18),
              child: const Image(image: AssetImage('assets/logo.png')),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                QuestionWidget(
                    questions: questions[index].title,
                    indexAction: index,
                    totalQuestion: questions.length),
                const Divider(
                  color: Colors.black54,
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
