//** Wir haben heute ein paar Aufgaben zu erledigen
//** Deshalb wollen wir uns eine kleine Todo App erstellen:

// ** Hier sind unsere Aufgaben:
final List<String> tasks = [
  'Wäsche waschen',
  'Flutter lernen',
  'Sport',
];

// ** Aufgabe 1:
// TODO: Erstelle eine Klasse namens Task
// TODO: Die Klasse soll folgende Eigenschaften haben:
// TODO: - title
// TODO: - description
// TODO: - isDone

class Task {
  //Atrribute
  final String title;
  final String description;
  final bool isDone;
  final int difficulty; // from 1-5

  //Konstruktor
  Task({
    required this.title,
    required this.description,
    required this.isDone,
    required this.difficulty,
  });
}

// ** Aufgabe 2:
// TODO: Erstelle eine Liste mit allen Aufgaben
List<Task> myTodo = [
  Task(
    title: 'Wäsche waschen',
    description: '40 Grad',
    isDone: false,
    difficulty: 1,
  ),
  Task(
    title: 'Flutter lernen',
    description: 'Gut aufpassen',
    isDone: false,
    difficulty: 3,
  ),
  Task(
    title: 'Sport',
    description: 'Workout',
    isDone: false,
    difficulty: 5,
  ),
];

// ** Aufgabe 3:
// TODO: Erstelle einen Page namens TaskPage, die alle Tasks anzeigt
