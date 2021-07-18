import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/main/counter_viewmodel.dart';
import 'package:exercise3/screens/view.dart';
import 'package:exercise3/screens/home_recipe/widgets/sideDrawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../homerecipe_viewmodel.dart';

class Body extends StatelessWidget {
  final HomeRecipeViewModel _viewRecipeModel;
  Body(viewmodel, drawerKey)
      : _viewRecipeModel = viewmodel,
        mainDrawerKey = drawerKey;

  List imgs = [
    "assets/images/pasta_img.png",
    "assets/images/butter_img.jpg",
    "assets/images/chinese_soup_img.jpg",
    "assets/images/tortillawrap_img.jpg",
  ];
  List<Map<String, String>> sliderData = [
    {
      "img": "assets/images/pasta_img.png",
      "title": "Pasta",
      "min": "17.48 min",
      "view": "1147 view",
    },
    {
      "img": "assets/images/butter_img.jpg",
      "title": "Cilantro, Lime & F...",
      "min": "17.48 min",
      "view": "1147 view",
    },
    {
      "img": "assets/images/chinese_soup_img.jpg",
      "title": "Chinese Chicken S...",
      "min": "17.48 min",
      "view": "1147",
    },
    {
      "img": "assets/images/tortillawrap_img.jpg",
      "title": "Tortilla Wrap",
      "min": "17.48 min",
      "view": "1147 view",
    },
  ];
  String title;
  int backPressCounter = 1;
  int backPressTotal = 2;
  final GlobalKey<ScaffoldState> mainDrawerKey;

  void _recipeDetail(BuildContext context, index) {
    Navigator.pushNamed(context, '/recipe', arguments: Recipe.copy(index));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Recipe>>(
      future: _viewRecipeModel.futureRecipe,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          _viewRecipeModel.recipe = snapshot.data;
          // _viewmodel.foodList;
          return _buildFoodList(context);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
      //FoodList(),
    );
  }

  Widget _buildFoodList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Appbar
          Container(
            height: 50,
            child: Stack(
              fit: StackFit.expand,
              children: [
                //menu btn
                Positioned(
                  left: 6,
                  top: 0,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      mainDrawerKey.currentState.openDrawer();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/icons/ic_menu.png",
                          scale: 3.2, color: Theme.of(context).iconTheme.color),
                    ),
                  ),
                ),
                //Center Widget
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'bold',
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                  ),
                ),
                //search btn
                Positioned(
                  right: 1.5,
                  top: 0,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, _searchScreenRoute());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/icons/ic_search.png",
                          scale: 4.5, color: Theme.of(context).iconTheme.color),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  //Space
                  SizedBox(
                    height: 5,
                  ),
                  //Trending
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Trending",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "bold",
                        color: Theme.of(context).textTheme.caption.color,
                      ),
                    ),
                  ),
                  //Space
                  SizedBox(
                    height: 13,
                  ),
                  //Slider
                  Container(
                    height: 155,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 150,
                        aspectRatio: 16 / 10,
                        viewportFraction: 0.84,
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: sliderData.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(i["img"]))),
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 20),
                              child: Container(
                                width: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //
                                    Container(
                                      child: Text(
                                        i["title"],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "medium",
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .color,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: Text(
                                        i["min"],
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "medium",
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .color,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        i["view"],
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "medium",
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  //Category
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(
                  //     "Ingredient",
                  //     style: TextStyle(
                  //         fontSize: 16,
                  //         fontFamily: "bold",
                  //         color: Theme.of(context).textTheme.caption.color),
                  //   ),
                  // ),
                  // //
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 18),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       InkWell(
                  //         onTap: () {
                  //           // setState(() {
                  //           //   title = "Fruit";
                  //           // });
                  //           // Navigator.push(context,
                  //           //     _selectCategoriesScreenRoute());
                  //         },
                  //         child: Container(
                  //           alignment: Alignment.centerLeft,
                  //           child: Column(
                  //             children: [
                  //               Image.asset(
                  //                 "assets/icons/ic_fruit.png",
                  //                 scale: 1.8,
                  //               ),
                  //               Container(
                  //                 padding: EdgeInsets.only(top: 5),
                  //                 child: Text(
                  //                   "Fruit",
                  //                   style: TextStyle(
                  //                       fontSize: 11,
                  //                       fontFamily: "medium",
                  //                       color: Theme.of(context)
                  //                           .textTheme
                  //                           .caption
                  //                           .color),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // setState(() {
                  //           //   title = "Bread";
                  //           // });
                  //           // Navigator.push(context,
                  //           //     _selectCategoriesScreenRoute());
                  //         },
                  //         child: Container(
                  //           alignment: Alignment.center,
                  //           child: Column(
                  //             children: [
                  //               Image.asset(
                  //                 "assets/icons/ic_bread.png",
                  //                 scale: 1.8,
                  //               ),
                  //               Container(
                  //                 padding: EdgeInsets.only(top: 5),
                  //                 child: Text(
                  //                   "Bread",
                  //                   style: TextStyle(
                  //                       fontSize: 11,
                  //                       fontFamily: "medium",
                  //                       color: Theme.of(context)
                  //                           .textTheme
                  //                           .caption
                  //                           .color),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // setState(() {
                  //           //   title = "Minum";
                  //           // });
                  //           // Navigator.push(context,
                  //           //     _selectCategoriesScreenRoute());
                  //         },
                  //         child: Container(
                  //           child: Column(
                  //             children: [
                  //               Image.asset(
                  //                 "assets/icons/ic_minum.png",
                  //                 scale: 1.8,
                  //               ),
                  //               Container(
                  //                 padding: EdgeInsets.only(top: 5),
                  //                 child: Text(
                  //                   "Spice",
                  //                   style: TextStyle(
                  //                       fontSize: 11,
                  //                       fontFamily: "medium",
                  //                       color: Theme.of(context)
                  //                           .textTheme
                  //                           .caption
                  //                           .color),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // Navigator.push(
                  //           //     context, _categoriesScreenRoute());
                  //         },
                  //         child: Container(
                  //           child: Column(
                  //             children: [
                  //               Image.asset(
                  //                 "assets/icons/ic_more.png",
                  //                 scale: 1.8,
                  //               ),
                  //               Container(
                  //                 padding: EdgeInsets.only(top: 5),
                  //                 child: Text(
                  //                   "More",
                  //                   style: TextStyle(
                  //                       fontSize: 11,
                  //                       fontFamily: "medium",
                  //                       color: Theme.of(context)
                  //                           .textTheme
                  //                           .caption
                  //                           .color),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //Recent
                  Container(
                    padding: EdgeInsets.only(
                        left: 18, right: 18, top: 12, bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recent",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "bold",
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                  ),
                  //list
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: _viewRecipeModel.recipe.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: InkWell(
                                onTap: () {
                                  _recipeDetail(
                                      context, _viewRecipeModel.recipe[index]);
                                },
                                child: Container(
                                  height: 120,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 8),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            //left
                                            Container(
                                              width: 105,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          _viewRecipeModel
                                                              .recipe[index]
                                                              .result))),
                                              // child: Image.asset(
                                              //   "assets/icons/ic_video.png",
                                              //   scale: 3,
                                              // ),
                                            ),
                                            //mid
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12, vertical: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  //
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        //Spicy Pizza
                                                        Container(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            '${_viewRecipeModel.recipe[index].title}',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontFamily:
                                                                    "bold",
                                                                color: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .caption
                                                                    .color),
                                                          ),
                                                        ),
                                                        //Processed bananas...
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Text(
                                                            // homePageScreenList[
                                                            //         index]
                                                            //     .subTitle
                                                            "${_viewRecipeModel.recipe[index].description}",
                                                            style: TextStyle(
                                                                fontSize: 11,
                                                                fontFamily:
                                                                    "medium",
                                                                color: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1
                                                                    .color),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  //
                                                  // Container(
                                                  //   child: Row(
                                                  //     mainAxisAlignment:
                                                  //         MainAxisAlignment
                                                  //             .spaceBetween,
                                                  //     children: [
                                                  //       //
                                                  //       Container(
                                                  //         child: Text(
                                                  //           // homePageScreenList[
                                                  //           //         index]
                                                  //           //     .minutes
                                                  //           "a",
                                                  //           style: TextStyle(
                                                  //               fontSize: 11,
                                                  //               fontFamily:
                                                  //                   "bold",
                                                  //               color: Theme.of(
                                                  //                       context)
                                                  //                   .textTheme
                                                  //                   .caption
                                                  //                   .color),
                                                  //         ),
                                                  //       ),
                                                  //       Container(
                                                  //         child: Text(
                                                  //           // homePageScreenList[
                                                  //           //         index]
                                                  //           //     .views
                                                  //           "a",
                                                  //           style: TextStyle(
                                                  //               fontSize: 11,
                                                  //               fontFamily:
                                                  //                   "bold",
                                                  //               color: Theme.of(
                                                  //                       context)
                                                  //                   .textTheme
                                                  //                   .caption
                                                  //                   .color),
                                                  //         ),
                                                  //       )
                                                  //     ],
                                                  //   ),
                                                  // )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //Space
                                      SizedBox(
                                        width: 10,
                                      ),

                                      //right
                                      InkWell(
                                        onTap: () {
                                          // if (homePageScreenList[
                                          //             index]
                                          //         .isSelected !=
                                          //     null) {
                                          //   if (homePageScreenList[
                                          //           index]
                                          //       .isSelected) {
                                          //     itemChange(
                                          //         false, index);
                                          //   } else {
                                          //     itemChange(true, index);
                                          //   }
                                          // }
                                        },
                                        child: Container(
                                            padding: EdgeInsets.all(5),
                                            child:
                                                // homePageScreenList[index]
                                                //                 .isSelected !=
                                                //             null &&
                                                //         homePageScreenList[index]
                                                //             .isSelected
                                                //     ?
                                                //     Image.asset(
                                                //         "assets/icons/ic_fav.png",
                                                //         scale: 4,
                                                //         color:
                                                //             Theme.of(context)
                                                //                 .textTheme
                                                //                 .caption
                                                //                 .color)
                                                //     :
                                                Image.asset(
                                                    "assets/icons/ic_fav_border.png",
                                                    scale: 4,
                                                    color: Theme.of(context)
                                                        .textTheme
                                                        .caption
                                                        .color)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
