
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:examplecopy/bloc/list_bloc.dart';
import 'package:examplecopy/model/list_Item.dart';
import 'package:examplecopy/utils.dart';
import 'package:examplecopy/widgets/home_list_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../profile_screen.dart';
import 'WebViewWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BuildContext _buildContext;
  var versionNumber;
  bool isFabVisible = true;
  bool hasJoinedSlack = false;
  ScrollController _hideButtonController;
  bool isCheckBoxChecked = false;
  String appLink =
      "https://play.google.com/store/apps/details?id=com.annsh.flutterwidgetguide";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    Utils.getVersion().then((value) {
      versionNumber = value;
    });
    _getValueFromSP();
    isFabVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(
          () {
        if (_hideButtonController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (isFabVisible == true) {
            setState(() => isFabVisible = false);
          }
        } else {
          if (_hideButtonController.position.userScrollDirection ==
              ScrollDirection.forward) {
            if (isFabVisible == false) {
              setState(() => isFabVisible = true);
            }
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _buildContext = context;
    return homePageScaffold(context);
  }

  Widget homePageScaffold(BuildContext context) =>
      Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Scaffold(
          key: _scaffoldKey,
          body: sliverWidgetList(),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Visibility(
            visible: isFabVisible && !hasJoinedSlack,
            child: FloatingActionButton.extended(
              backgroundColor: Color(0xFFffffff),
              icon: Container(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  Utils.slack_img,
                  semanticsLabel: "Join Slack",
                ),
              ),
              label: Text(
                "Join us",
                style: TextStyle(
                    color: Colors.black87, fontFamily: Utils.ubuntuRegularFont),
              ),
              onPressed: () =>
              {
                showDialog(
                  context: context,

                  /// StatefulBuilder is used here to make setState work on AlertDialog
                  /// For checkbox state functionality
                  builder: (context) =>
                      StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: Center(
                              child: Text(
                                "Join us at\nFlutter Worldwide",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: Utils.ubuntuRegularFont),
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "My main motive here is to create a community of flutter developers"
                                      " from all around the world. Join us to expand your knowledge on Flutter"
                                      " with the rest of the world.",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: Utils.ubuntuRegularFont,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: OutlineButton(
                                      child: Text("Get an Invite"),
                                      onPressed: () =>
                                          Utils.launchURL(
                                              "${Utils.slack_invite}"),
                                      borderSide: BorderSide(
                                          color: Colors.blue),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(30.0))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                          "Already joined? \nCheck to hide FAB"),
                                      Checkbox(
                                        value: isCheckBoxChecked,
                                        activeColor: Colors.blue,
                                        onChanged: (bool isChecked) {
                                          setState(
                                                () {
                                              isCheckBoxChecked = isChecked;
                                            },
                                          );
                                          _hideFabForever(isChecked);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                ),
              },
            ),
          ),
        ),
      );

  Widget sliverWidgetList() {
    ListBloc listBloc = ListBloc();
    return StreamBuilder<List<ListItem>>(
        stream: listBloc.listItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? CustomScrollView(
            controller: _hideButtonController,
            //This is to contain Sliver Elements
            slivers: <Widget>[
              appBar(context),
              SliverPadding(
                padding: EdgeInsets.all(4.0),
              ),
              SliverPadding(
                sliver: bodyList(snapshot.data),
                padding: EdgeInsets.only(bottom: 12.0),
              ),
            ],
          )
              : Center(child: CircularProgressIndicator());
        });
  }

  Widget appBar(BuildContext context) =>
      SliverAppBar(
        backgroundColor: Colors.white,
        pinned: true,
        elevation: 3.0,
        forceElevated: false,
        expandedHeight: 80.0,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding:
          EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 14.0),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 12.0, left: 8.0),
                child: GestureDetector(
                  child: FlutterLogo(
                    colors: Colors.cyan,
                    textColor: Colors.white,
                  ),
                  onTap: () =>
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewWidget(url: "https://flutter.dev"),
                        ),
                      ),
                ),
              ),
              //To give a margin
              SizedBox(
                width: 0.0,
              ),
              Text(
                Utils.appName,
                style: TextStyle(
                    fontFamily: Utils.ubuntuRegularFont, fontSize: 16),
              ),
              SizedBox(
                width: 0.0,
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 8.0),
                  child: CircleAvatar(
                    radius: 14.0,
                    backgroundImage: AssetImage('assets/images/dp.png'),
                  ),
                ),
                onTap: () =>
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => ProfileScreen()),
              ),
            ],
          ),
        ),
//        actions: <Widget>[
//
//        ],
      );

  Widget bodyList(List<ListItem> listItems) =>
      SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return listItemDesign(context, listItems[index], index);
        }, childCount: listItems.length),
      );


  /// Build a snackbar to notify user that a new update is available
  buildSnakbar() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Update Available"),
      duration: Duration(seconds: 10),
      backgroundColor: Colors.green,
      action: SnackBarAction(
        label: 'UPDATE',
        onPressed: () {
          Utils.launchURL(appLink);
        },
      ),
    ));
  }

  /// Method to call when user checks checkbox
  _hideFabForever(bool isChecked) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hidefab', isChecked);
    setState(() {
      hasJoinedSlack = isChecked;
    });
  }

  /// Method to get value from shared preferences
  _getValueFromSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (prefs.getBool('hidefab') != null) {
        hasJoinedSlack = prefs.getBool('hidefab');
      } else {
        hasJoinedSlack = false;
      }
    });
  }
}
