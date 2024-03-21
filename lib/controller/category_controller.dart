import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/model/category_model/category_model.dart';

class CategoryController {
  static List<CategoryModel> lstCategoryController = [
    CategoryModel(
        image:
            "https://i.pinimg.com/736x/e3/6e/a8/e36ea815dc8360036fca80058b45fb29.jpg",
        name: "Sports",
        lstQuestions: QuizController.lstSports),
    CategoryModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT19XeDyzEzsoyLjKeiMLorryycjngbaRmEytEeHFg0GQ&s",
        name: "Chemistry",
        lstQuestions: QuizController.lstChemistry),
    CategoryModel(
        image:
            "https://images.pexels.com/photos/714699/pexels-photo-714699.jpeg?auto=compress&cs=tinysrgb&w=600",
        name: "Math",
        lstQuestions: QuizController.lstMath),
    CategoryModel(
        image:
            "https://images.pexels.com/photos/1092644/pexels-photo-1092644.jpeg?auto=compress&cs=tinysrgb&w=600",
        name: "Flutter",
        lstQuestions: QuizController.flutterQuestions)
  ];
}
