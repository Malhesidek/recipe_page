import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_page/constants.dart';
import 'package:recipe_page/list_instructions.dart';
import 'package:recipe_page/list_short.dart';
import 'package:recipe_page/list_text.dart';
import 'package:recipe_page/nutritions.dart';
import 'package:recipe_page/recipe_theme.dart';

void main() {
  runApp(const RecipePage());
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: recipeTheme,
      home: SafeArea(
          child: Scaffold(
        body: Scrollbar(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/image-omelette.jpeg'),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Simple omelette recipe",
                      style: TextStyle(
                          fontFamily: kFontYoungSerifRegular, fontSize: 40),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      'Simple Omelette Recipe An easy and quick dish, perfect for any meal. This classic omelette combines beaten eggs cooked to perfection, optionally filled with your choice of cheese, vegetables, or meats.',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xffFFF7FC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Preparation time',
                            style: TextStyle(
                                color: Color(0xff782344),
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          ListText(
                            boldText: 'Total:',
                            normalText: "Approximately 10 minutes",
                          ),
                          ListText(
                              boldText: 'Preparation:',
                              normalText: '5 minutes'),
                          ListText(
                              boldText: 'Cooking:', normalText: '5 minutes')
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      'Ingredients',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: kFontYoungSerifRegular,
                        fontSize: 32,
                        color: Color(0xff7A4B39),
                      ),
                    ),
                    ListShort(normalText: '2-3 large eggs'),
                    ListShort(normalText: 'Salt, to taste'),
                    ListShort(normalText: 'Pepper, to taste'),
                    ListShort(normalText: 'Pepper, to taste'),
                    ListShort(normalText: '1 tablespoon of butter or oil'),
                    ListShort(
                        normalText:
                            'Optional fillings: cheese, diced vegetables, cooked meats, herbs'),
                    const SizedBox(height: 20,),
                    const Text(
                      'Instructions',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: kFontYoungSerifRegular,
                        fontSize: 32,
                        color: Color(0xff7A4B39),
                      ),
                    ),
                    ListInstructions(inputData: kInstructionList),
                    const SizedBox(height: 20,),
                    const Divider(),
                    const SizedBox(height: 20,),
                    const Text(
                      'Nutritions',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: kFontYoungSerifRegular,
                        fontSize: 32,
                        color: Color(0xff7A4B39),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                        "The table below shows nutritional values per serving without the additional fillings.",
                        style:
                           TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 20,),
                    NutritionList(nutritionJSON: kNutrition)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
