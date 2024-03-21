import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';
import 'package:quiz_app/model/category_model/category_model.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.primaryGrey.withOpacity(.4)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(
                      categoryModel.image,
                    ),
                    fit: BoxFit.cover),
              ),
            )),
            
            SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryModel.name,
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "",
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
