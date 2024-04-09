import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/controller/category_controller.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';
import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/view/home_screen/widgets/custom_gridview_widgets.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi,Thejal",
                        style: TextStyle(
                            color: ColorConstants.primaryWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lets make this day more productive",
                        style: TextStyle(
                            color: ColorConstants.primaryWhite,
                            fontWeight: FontWeight.normal,
                            fontSize: 13),
                      )
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 26,
                    child: Image.network(
                        "https://instagram.fcok4-1.fna.fbcdn.net/v/t51.2885-19/395308835_3463668007277756_5707619813024977731_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcok4-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=E_xG2ZRp8uIAb6APSIP&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAGyqjDq86z0sbc85oZ46ntZhS_WDuno7JpnY9lipbxuw&oe=661B0F82&_nc_sid=8b3546"),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorConstants.primaryGrey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Choose a category',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lets play",
                style: TextStyle(
                    color: ColorConstants.primaryWhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: CategoryController.lstCategoryController.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    CategoryModel categoryModel =
                        CategoryController.lstCategoryController[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  QuizScreen(categoryModel: categoryModel),
                            ));
                      },
                      child: CustomGridView(categoryModel: categoryModel),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
