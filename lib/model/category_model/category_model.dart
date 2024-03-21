import 'package:quiz_app/model/quic_screen_model/question_model.dart';

class CategoryModel{


  final String image;

  final String name;

  final List<QuestionsModel> lstQuestions;


  CategoryModel({required this.image,required this.name,required this.lstQuestions});

}