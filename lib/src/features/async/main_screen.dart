import 'package:flutter/material.dart';

// Model for a quiz question
class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correctIndex;

  QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctIndex,
  });
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Example questions
  final List<QuizQuestion> _questions = [
    QuizQuestion(
      question: 'Was bedeutet "asynchron" in der Programmierung?',
      answers: [
        'Der Code wird nacheinander ausgeführt.',
        'Der Code kann unabhängig voneinander ausgeführt werden.',
        'Der Code wird immer sofort ausgeführt.',
        'Der Code wird nur bei Fehlern ausgeführt.',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      question:
          'Welche Methode wird in Dart für asynchrone Operationen verwendet?',
      answers: [
        'sync',
        'await',
        'async',
        'delay',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      question: 'Was ist ein Future in Dart?',
      answers: [
        'Eine Funktion, die sofort ein Ergebnis liefert.',
        'Eine Variable, die nur Zahlen speichern kann.',
        'Ein Platzhalter für ein Wert, der später verfügbar ist.',
        'Ein Fehlerobjekt.',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      question: 'Was ist der Unterschied zwischen synchron und asynchron?',
      answers: [
        'Synchroner Code läuft unabhängig voneinander.',
        'Asynchroner Code blockiert den Hauptthread.',
        'Synchroner Code wird Schritt für Schritt ausgeführt, asynchroner Code kann unterbrochen werden.',
        'Asynchroner Code ist immer schneller.',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      question: 'Wie kennzeichnet man eine Funktion in Dart als asynchron?',
      answers: [
        'Mit dem Schlüsselwort async.',
        'Mit dem Schlüsselwort await.',
        'Mit dem Schlüsselwort future.',
        'Mit dem Schlüsselwort then.',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      question: 'Was macht das Schlüsselwort "await" in Dart?',
      answers: [
        'Es startet eine neue Funktion.',
        'Es wartet auf das Ergebnis eines Futures, bevor es weitergeht.',
        'Es beendet ein Future.',
        'Es macht eine Funktion synchron.',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      question: 'Welche Rückgabewerte kann eine async-Funktion in Dart haben?',
      answers: [
        'Immer void.',
        'Immer Future oder Future<T>.',
        'Immer int.',
        'Immer String.',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      question:
          'Was passiert, wenn ein Fehler in einer async-Funktion auftritt?',
      answers: [
        'Das Programm stürzt ab.',
        'Der Fehler wird als Exception/Future-Fehler behandelt.',
        'Der Fehler wird ignoriert.',
        'Die Funktion wird synchron weiter ausgeführt.',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      question: 'Wie kann man mehrere Futures gleichzeitig ausführen?',
      answers: [
        'Mit Future.wait().',
        'Mit async.',
        'Mit delay.',
        'Mit Future.sync().',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      question: 'Was ist ein Callback?',
      answers: [
        'Eine Funktion, die als Argument an eine andere Funktion übergeben wird.',
        'Eine Variable.',
        'Ein Fehlerobjekt.',
        'Ein Datentyp.',
      ],
      correctIndex: 0,
    ),
  ];

  int _currentQuestion = 0;
  int? _selectedIndex;
  bool _answered = false;
  int _score = 0;

  void _answerQuestion(int index) {
    if (_answered) return;
    setState(() {
      _selectedIndex = index;
      _answered = true;
      if (index == _questions[_currentQuestion].correctIndex) {
        _score++;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _currentQuestion++;
      _selectedIndex = null;
      _answered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isFinished = _currentQuestion >= _questions.length;
    return Scaffold(
      appBar: AppBar(title: const Text('Async Quiz')),
      body: Center(
        child: isFinished
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Quiz beendet!',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  Text('Dein Score: $_score / ${_questions.length}'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentQuestion = 0;
                        _score = 0;
                        _selectedIndex = null;
                        _answered = false;
                      });
                    },
                    child: const Text('Nochmal spielen'),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _questions[_currentQuestion].question,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    ...List.generate(
                        _questions[_currentQuestion].answers.length, (i) {
                      final isCorrect = _answered &&
                          i == _questions[_currentQuestion].correctIndex;
                      final isSelected = _selectedIndex == i;

                      Color? getBackgroundColor() {
                        if (!_answered) return null;
                        if (isCorrect) return Colors.green;
                        if (isSelected) return Colors.red;
                        return null;
                      }

                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: getBackgroundColor(),
                          ),
                          onPressed:
                              _answered ? null : () => _answerQuestion(i),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              _questions[_currentQuestion].answers[i],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }),
                    const SizedBox(height: 24),
                    if (_answered)
                      ElevatedButton(
                        onPressed: _currentQuestion < _questions.length - 1
                            ? _nextQuestion
                            : () => setState(() => _currentQuestion++),
                        child: Text(_currentQuestion < _questions.length - 1
                            ? 'Nächste Frage'
                            : 'Fertig'),
                      ),
                  ],
                ),
              ),
      ),
    );
  }
}
