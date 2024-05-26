import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  List<String> _selectedAnswers = List.filled(50, '');
  List<bool> _correctAnswers = List.filled(50, false);
  List<Question> _questions = [
    Question(
      questionText: 'What is Flutter?',
      options: [
        'A mobile development framework by Google',
        'A programming language',
        'A database',
        'A cloud service'
      ],
      correctAnswer: 'A mobile development framework by Google',
    ),
    Question(
      questionText: 'Which programming language is used by Flutter?',
      options: ['Java', 'Kotlin', 'Dart', 'Swift'],
      correctAnswer: 'Dart',
    ),
    Question(
      questionText: 'Who developed Flutter?',
      options: ['Apple', 'Google', 'Facebook', 'Microsoft'],
      correctAnswer: 'Google',
    ),
    Question(
      questionText: 'What is the command to create a new Flutter project?',
      options: [
        'flutter start project',
        'flutter create project',
        'flutter new project',
        'flutter create'
      ],
      correctAnswer: 'flutter create',
    ),
    Question(
      questionText: 'What is a widget in Flutter?',
      options: [
        'A UI element',
        'A database',
        'A programming language',
        'A server'
      ],
      correctAnswer: 'A UI element',
    ),
    // Add more questions here up to 50
    // ... Add remaining questions
  ];

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _showResults();
    }
  }

  void _showResults() {
    int correctAnswers = 0;
    for (int i = 0; i < _questions.length; i++) {
      if (_questions[i].correctAnswer == _selectedAnswers[i]) {
        correctAnswers++;
      }
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Quiz Results'),
        content: Text(
          'You got $correctAnswers out of ${_questions.length} correct!',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _currentQuestionIndex = 0;
                _selectedAnswers = List.filled(50, '');
                _correctAnswers = List.filled(50, false);
              });
            },
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Flutter Quiz',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Question ${_currentQuestionIndex + 1}/${_questions.length}',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              SizedBox(height: 20),
              Text(
                _questions[_currentQuestionIndex].questionText,
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
              SizedBox(height: 20),
              ..._questions[_currentQuestionIndex].options.map((option) {
                return RadioListTile<String>(
                  title: Text(
                    option,
                    style: TextStyle(
                      color: _selectedAnswers[_currentQuestionIndex] == option
                          ? (_questions[_currentQuestionIndex].correctAnswer ==
                                  option
                              ? Colors.green
                              : Colors.red)
                          : Colors.black,
                    ),
                  ),
                  value: option,
                  groupValue: _selectedAnswers[_currentQuestionIndex],
                  onChanged: (value) {
                    setState(() {
                      _selectedAnswers[_currentQuestionIndex] = value!;
                      _correctAnswers[_currentQuestionIndex] =
                          _questions[_currentQuestionIndex].correctAnswer ==
                              value;
                    });
                  },
                );
              }).toList(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(_currentQuestionIndex < _questions.length - 1
                    ? 'Next'
                    : 'Submit'),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  final String questionText;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswer,
  });
}
