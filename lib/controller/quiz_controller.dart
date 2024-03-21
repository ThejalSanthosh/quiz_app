import 'package:quiz_app/model/quic_screen_model/question_model.dart';

class QuizController {
  static List<QuestionsModel> lstSports = [
    QuestionsModel(
      questions:
          "Which country has won the most Olympic gold medals in the history of the Summer Olympics?",
      optionsList: ["United States", "China", "Russia", "Germany"],
      index: 0,
    ),
    QuestionsModel(
      questions: "Who is the all-time leading scorer in NBA history?",
      optionsList: [
        "Kareem Abdul-Jabbar",
        "Michael Jordan",
        "LeBron James",
        "Kobe Bryant"
      ],
      index: 2,
    ),
    QuestionsModel(
      questions:
          "Which tennis player holds the record for the most Grand Slam titles won in the Open Era?",
      optionsList: [
        "Serena Williams",
        "Roger Federer",
        "Rafael Nadal",
        "Steffi Graf"
      ],
      index: 3,
    ),
    QuestionsModel(
      questions:
          "In which year did Usain Bolt set the world record for the 100 meters?",
      optionsList: ["2009", "2012", "2008", "2016"],
      index: 0,
    ),
    QuestionsModel(
        questions:
            "Who holds the record for the most goals scored in a single FIFA World Cup tournament?",
        optionsList: ["Just Fontaine", "Pele", "Miroslav Klose", "Gerd Muller"],
        index: 2)
  ];

  static List<QuestionsModel> lstChemistry = [
    QuestionsModel(
      questions: "What is the chemical symbol for gold?",
      optionsList: ["Au", "Ag", "Pb", "Fe"],
      index: 0,
    ),
    QuestionsModel(
      questions: "Which gas is responsible for the smell of rotten eggs?",
      optionsList: ["Hydrogen sulfide", "Carbon monoxide", "Oxygen", "Methane"],
      index: 0,
    ),
    QuestionsModel(
      questions: "What is the chemical formula for water?",
      optionsList: ["CO2", "H2O", "NaCl", "HCl"],
      index: 1,
    ),
    QuestionsModel(
      questions: "Which element has the atomic number 6?",
      optionsList: ["Nitrogen", "Oxygen", "Carbon", "Hydrogen"],
      index: 2,
    ),
    QuestionsModel(
      questions:
          "What is the process of converting a solid directly to a gas called?",
      optionsList: ["Sublimation", "Evaporation", "Condensation", "Melting"],
      index: 0,
    )
  ];

  static List<QuestionsModel> lstMath = [
    QuestionsModel(
      questions: "What is the value of π (pi) to two decimal places?",
      optionsList: ["3.16", "3.12", "3.18", "3.14"],
      index: 3,
    ),
    QuestionsModel(
      questions: "What is the square root of 144?",
      optionsList: [ "10","12", "14", "16"],
      index: 1,
    ),
    QuestionsModel(
      questions:
          "If a triangle has sides of lengths 3, 4, and 5 units, what type of triangle is it?",
      optionsList: [
        "Right triangle",
        "Equilateral triangle",
        "Isosceles triangle",
        "Scalene triangle"
      ],
      index: 0,
    ),
    QuestionsModel(
      questions: "What is the result of 5 factorial (5!)?",
      optionsList: ["120", "20", "60", "24"],
      index: 0,
    ),
    QuestionsModel(
      questions:
          "If a circle has a radius of 5 units, what is its circumference?",
      optionsList: ["31.42 units", "15.71 units", "10 units", "20 units"],
      index: 0,
    )
  ];

  static List<QuestionsModel> flutterQuestions = [
    QuestionsModel(
      questions: "What is Flutter?",
      optionsList: [
        "A mobile development framework",
        "A programming language",
        "A UI design tool",
        "A database management system"
      ],
      index: 0,
    ),
    QuestionsModel(
      questions: "What programming language is used in Flutter?",
      optionsList: ["Dart", "Java", "Swift", "Python"],
      index: 1,
    ),
    QuestionsModel(
      questions: "What does Hot Reload do in Flutter?",
      optionsList: [
        "Updates the UI without losing state",
        "Restarts the app",
        "Deletes the project files",
        "Compiles the code"
      ],
      index: 2,
    ),
    QuestionsModel(
      questions: "What widget is at the root of every Flutter app?",
      optionsList: ["MaterialApp", "Scaffold", "Container", "Widget"],
      index: 3,
    ),
    QuestionsModel(
      questions: "What is the purpose of a StatefulWidget in Flutter?",
      optionsList: [
        "Maintain state that can change during the lifetime of the widget",
        "Display static content",
        "Handle user input",
        "Make HTTP requests"
      ],
      index: 4,
    ),
  ];
}
