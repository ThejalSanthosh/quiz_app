import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/view/home_screen/home_screen.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';

class TotalPercentageScreen extends StatelessWidget {
  TotalPercentageScreen(
      {super.key,
      required this.rightAnsCount,
      required this.totalCount,
      required this.wrongAnsCount,
      required this.categoryModel});

  final int rightAnsCount;
  final int totalCount;
  final int wrongAnsCount;
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    final percentage = (rightAnsCount / totalCount) * 100;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(
              
              messageShow(percentage)
              ,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' ${percentage.roundToDouble()}% score ',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Correct Answer:$rightAnsCount ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "wrong Answer:$wrongAnsCount ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "Skipped Question: ${totalCount - rightAnsCount - wrongAnsCount}",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  QuizScreen(categoryModel: categoryModel),
                            ));
                      },
                      child: Ink(
                        // alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange),
                        child: Center(
                          child: Text("RESTART",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange),
                        child: Center(
                          child: Text("HOME SCREEN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

String messageShow(double percentage) {

  if(percentage>90){


    return "Very Good"; 
  }else if(percentage>40&&percentage<=90){

    return "Good";

  }else if(percentage<=40){
    return "Oops";
  }
  return "";

}


