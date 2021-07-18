import 'package:flutter/material.dart';

import '../../view.dart';
import '../homerecipe_viewmodel.dart';

class SideDrawer extends StatefulWidget {
  final HomeRecipeViewModel _viewRecipeModel;
  SideDrawer(viewmodel) : _viewRecipeModel = viewmodel;
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  void _profileButton(BuildContext context) =>
      Navigator.pushNamed(context, '/profile');

  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: widget._viewRecipeModel,
      builder: (_, viewmodel, __) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.6 + 20,
        child: Drawer(
          child: Container(
            child: Column(
              children: [
                //Space
                SizedBox(
                  height: 40,
                ),
                //Drawer Header
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    viewmodel.user.photoUrl,
                                  ))),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 11),
                          child: Text(
                            "${viewmodel.user.name}",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'bold',
                                color:
                                    Theme.of(context).textTheme.caption.color),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 24, right: 20, top: 20),
                    child: Column(
                      children: <Widget>[
                        //Home
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/main');
                          },
                          child: Container(
                            height: 55,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/icons/ic_home.png",
                                    scale: 4.4,
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        //Ingredient
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/ingredient'),
                          child: Container(
                            height: 55,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/icons/ic_catagorie.png",
                                    scale: 4.4,
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    "Ingredient",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/myRecipe'),
                          child: Container(
                            height: 55,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/icons/ic_bmi.png",
                                    scale: 4.4,
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    "My recipe",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //Favourite
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 55,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/icons/ic_fav_border.png",
                                    scale: 4.4,
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    "Favourite",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //Profile
                        InkWell(
                          onTap: () => _profileButton(context),
                          child: Container(
                            height: 55,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/icons/ic_user.png",
                                    scale: 4.4,
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //Setting
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 55,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/icons/ic_setting.png",
                                    scale: 4.4,
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    "Setting",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //Log out
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/main");
                          },
                          child: Container(
                            height: 55,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/icons/ic_log.png",
                                    scale: 4.4,
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    "Log out",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color,
                                      fontSize: 14,
                                      fontFamily: 'medium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //Version 1.0
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "V1.0",
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .color,
                                    fontSize: 13,
                                    fontFamily: 'medium',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
