import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';
import 'package:quiz_app/splashScreen.dart';


void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
            ),
      home: splashScreen(),
    );
  }
}

class MyApp_page extends StatefulWidget {
  @override
  State<MyApp_page> createState() => MyApp_pageState();
}

class MyApp_pageState extends State<MyApp_page> {
  //Inititazing Question Variable
  var questions = [
    {
      'questionText': 'who\'s your favourite Leader?',
      'answer': [
        {'text': 'Imran Khan', 'score': 10},
        {'text': 'Shehbaz Sharif', 'score': 5},
        {'text': 'Nawaz Sharif','score': 3},
        {'text': 'Zardari', 'score': 1},
      ],
    },
    {
      'questionText': 'To Which Party You will Vote in Coming Elections? ',
      'answer': [
        {'text': 'PTI', 'score': 10},
        {'text':'PMLN' ,'score': 5},
        {'text': 'PPP','score': 3},
        {'text': 'MQM', 'score': 1},
      ],
    },
     {
      'questionText': 'Which Scholar U like the most? ',
      'answer': [
        {'text': 'Tuaha Ibn Jalil', 'score': 10},
        {'text':'Sir Israr-ul-Haj' ,'score': 5},
        {'text': 'Peer Ajmal Raza Qadri','score': 7},
        {'text': 'Molana Tariq Jameel', 'score': 3},
      ],
    },

    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'green', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Elephant', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite crickter?',
      'answer': [
        {'text': 'Babar(Classical)', 'score': 10},
        {'text': 'Kohli', 'score': 5},
        {'text': 'Ab Deviliers', 'score': 3},
        {'text': 'Rizwan', 'score': 1},
      ],
    },
    {
      'questionText': 'Which Country U wanna Visit in Your life for once?',
      'answer': [
        {'text': 'Sudia', 'score': 10},
        {'text': 'China', 'score': 5},
        {'text': 'India', 'score': 3},
        {'text': 'Japan', 'score': 1}
      ],
    },
     {
      'questionText': 'Which programming language You feel easy?',
      'answer': [
        {'text': 'C++', 'score': 10},
        {'text': 'Python', 'score': 5},
        {'text': 'Dart', 'score': 3},
        {'text': 'Html', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite Friend?',
      'answer': [
        {'text': 'Kaif', 'score': 10},
        {'text': 'Abdullah', 'score': 5},
        {'text': 'Faiz', 'score': 3},
        {'text': 'Rafay', 'score': 1}
      ],
    },
    {
      'questionText': 'Which is Your Favourite FootBall Player?',
      'answer': [
        {'text': 'Ronaldo', 'score': 10},
        {'text': 'Messi', 'score': 5},
        {'text': 'Neymar', 'score': 3},
        {'text': 'Ronaldinho', 'score': 1}
      ],
    }
  ];
   //Function
  var _questionindex = 0;
  var _totalScore = 0;

  void _resetQuiz(){    //To Restart Quiz
  setState(() {
       _questionindex = 0;
       _totalScore = 0;
  }
  );
 }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
    if (_questionindex < questions.length) {
      print('We have more Questions');
    } else {
      print('No more Questions!');
    }
    // print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Quiz App',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500))),
      ),
      body:
      Container(  //For Background Color
        height: double.infinity,
        width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff84fab0),
          Color(0xff8fd3f4),
        ])
      ),
        child: _questionindex < questions.length //Condition Check
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionindex,
              questions: questions) //Ternary Operator
          : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
