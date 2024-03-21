import 'package:flutter/material.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';
import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/view/total_percentage_screen/total_percentage_screen.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQnsIndex = 0;
  int? selectedAnsIndex;
  int rightAnsIndex = 0;
  int wrongAnsCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.primaryGrey.withOpacity(.4)),
                child: Text(
                  widget.categoryModel.lstQuestions[currentQnsIndex].questions,
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                    widget.categoryModel.lstQuestions[currentQnsIndex]
                        .optionsList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              if (selectedAnsIndex == null) {
                                selectedAnsIndex = index;
                                setState(() {});
                                rightAnsCount(index);
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(color: buildColor(index)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    widget
                                        .categoryModel
                                        .lstQuestions[currentQnsIndex]
                                        .optionsList[index],
                                    style: TextStyle(
                                        color: ColorConstants.primaryWhite,
                                        fontSize: 16),
                                  )),
                                  Icon(
                                    buildIcon(index),
                                    color: buildColor(index),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  // if(selectedAnsIndex!=null){

                  if (currentQnsIndex <
                      widget.categoryModel.lstQuestions.length - 1) {
                    currentQnsIndex++;
                    selectedAnsIndex = null;
                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TotalPercentageScreen(
                            categoryModel: widget.categoryModel,
                            rightAnsCount: rightAnsIndex,
                            totalCount:
                                widget.categoryModel.lstQuestions.length,
                            wrongAnsCount: wrongAnsCount,
                          ),
                        ));
                    // }
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.primaryBlue.withOpacity(.6)),
                  child: Text(
                    textAlign: TextAlign.center,
                    currentQnsIndex ==
                            widget.categoryModel.lstQuestions.length - 1
                        ? "FINISH"
                        : selectedAnsIndex == null
                            ? "SKIP"
                            : "NEXT",
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color buildColor(int index) {
    if (index == widget.categoryModel.lstQuestions[currentQnsIndex].index &&
        selectedAnsIndex != null) {
      return ColorConstants.primaryGreen;
    } else if (index == selectedAnsIndex) {
      if (selectedAnsIndex ==
          widget.categoryModel.lstQuestions[currentQnsIndex].index) {
        return ColorConstants.primaryGreen;
      } else {
        return ColorConstants.primaryRed;
      }
    } else {
      // to show default color is grey

      return ColorConstants.primaryGrey;
    }
  }

  IconData? buildIcon(int index) {
    if (index == widget.categoryModel.lstQuestions[currentQnsIndex].index &&
        selectedAnsIndex != null) {
      return Icons.done;
    } else if (index == selectedAnsIndex) {
      if (selectedAnsIndex !=
          widget.categoryModel.lstQuestions[currentQnsIndex].index) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }

  int rightAnsCount(int index) {
    if (selectedAnsIndex ==
        widget.categoryModel.lstQuestions[currentQnsIndex].index) {
      rightAnsIndex++;
    } else {
      wrongAnsCount++;
    }

    return rightAnsIndex;
  }
}
