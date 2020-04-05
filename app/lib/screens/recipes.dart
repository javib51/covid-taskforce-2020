import 'package:covid/app_routes.dart';
import 'package:covid/data/inventory_item.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/data/recipe.dart';
import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:flutter/material.dart';

class RecipesPage extends StatefulWidget {
  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  List<InventoryItem> inventory;
  List<Recipe> recipes;

  @override
  void initState() {
    super.initState();
  }

  Widget _buildItems(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
          left: getSizeWidth(context, 3), right: getSizeWidth(context, 2)),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: recipes.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: getSizeHeight(context, 2),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        Recipe recipe = recipes[index];
        return ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
//            height: 100.0,
            margin: const EdgeInsets.only(bottom: 6.0, left: 2.0, right: 2.0),
            //Same as `blurRadius` i guess
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0xffF2FDFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: getSizeWidth(context, 4)),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        child: Image.asset(recipe.photo),
                        padding:
                            EdgeInsets.only(top: getSizeHeight(context, 1), bottom: getSizeHeight(context, 1)),
                      ),
                      SizedBox(
                        width: getSizeWidth(context, 5),
                      ),
                      SizedBox(
                        width: getSizeWidth(context, 25),
                        child: Text(
                          recipe.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: nonBlackText,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getSizeWidth(context, 7),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: getSizeHeight(context, 4),
                            width: getSizeWidth(context, 30),
                            child: FlatButton(
                              color: turquoiseDarkButton,
                              disabledColor: recipe.missing
                                  ? purpleBackground
                                  : turquoiseDarkButton,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                  recipe.missing
                                      ? "Missing a few ingredients"
                                      : "Ready to Cook",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: turquoiseLightButton,
                                  )),
                              onPressed: null,
                            ),
                          ),
                          SizedBox(
                                  height: getSizeHeight(context, 1),
                                ),
                          !recipe.missing
                              ? Container()
                              : SizedBox(
                                  height: getSizeHeight(context, 4),
                                  width: getSizeWidth(context, 20),
                                  child: FlatButton(
                                    color: purpleButtonActive,
                                    disabledColor: purpleButtonActive,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(12.0),
                                    ),
                                    child: Text("Order More",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: turquoiseLightButton,
                                        )),
                                    onPressed: () {
                                      Navigator.pushNamed(context, AppRoutes.shoppingBasket);
                                    },
                                  ),
                                ),
                        ],
                      ),
                    ],
                  ),
//                  SizedBox(
//                    height: getSizeHeight(context, 2),
//                  ),
                  Row(
                    children: <Widget>[
                      Text("In Inventory: ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: purpleButtonActive,
                          )),
                      SizedBox(
                        width: getSizeWidth(context, 2),
                      ),
                      Padding(
                        child: Image.asset(recipe.items[0].photo),
                        padding:
                        EdgeInsets.only(top: getSizeHeight(context, 1), bottom: getSizeHeight(context, 1)),
                      ),
                      SizedBox(
                        width: getSizeWidth(context, 4),
                      ),
                      Padding(
                        child: Image.asset(recipe.items[1].photo),
                        padding:
                        EdgeInsets.only(top: getSizeHeight(context, 1), bottom: getSizeHeight(context, 1)),
                      ),
                      SizedBox(
                        width: getSizeWidth(context, 4),
                      ),
                      Padding(
                        child: Image.asset(recipe.items[2].photo),
                        padding:
                        EdgeInsets.only(top: getSizeHeight(context, 1), bottom: getSizeHeight(context, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getSizeHeight(context, 1),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    inventory = LocalData.instance.inventory;
    recipes = LocalData.instance.recipes;
    return Column(
      children: <Widget>[
        SizedBox(height: getSizeHeight(context, 1)),
        SizedBox(
          height: getSizeHeight(context, 74),
          child: _buildItems(context),
        ),
      ],
    );
  }
}
