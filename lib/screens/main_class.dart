
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nepapp/screens/News.dart';
import 'package:nepapp/screens/homescreen.dart';
import 'package:nepapp/screens/notes.dart';
import 'package:nepapp/utils/colorConstantsswipe.dart';
import 'package:nepapp/screens/Settings.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ScrollController _scrollController;
  late final PageController _c = PageController(
    initialPage: 0,
  );

  double offset = 0.0;
  static final _isInit = true;
  static final _isLoading = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  int _selectedIndex = 0;
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void _onItemTapped(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_c.hasClients) {
        _c.animateToPage(index,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut);

        setState(() {
          _selectedIndex = index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));
    List<String> headers = ["Home","Notes","News","Profile"];

    List<Widget> _widgetOptions = <Widget>[
      HomePage(),
      Notes(),
      News(),




    ];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Color.fromRGBO(221, 161, 7,1)
              ]
          )
      ),
      child: Scaffold(

        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,

          title: Text(
            headers[_selectedIndex],
            style: const TextStyle(
              fontFamily: 'medium',
              fontSize: 20,
              color: Color(0xff000000),
            ),
            textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          backgroundColor: Colors.transparent,
          actions:  <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                  },
                  child: Image(
                    image: Image.asset('assets/icons/settngs.png').image,
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),

        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: PageView.builder(
                itemCount: _widgetOptions.length,
                controller: _c,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Center(child: _widgetOptions.elementAt(index));
                }),
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
      child: Theme(data: Theme.of(context).copyWith(
      canvasColor:  Color.fromRGBO(255, 255, 221, 1),
      ),

            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6.0,
                    children: [
                      _selectedIndex == 0
                          ? Column(
                        children: [
                          ImageIcon(
                            Image.asset('assets/icons/home.png')
                                .image,
                            size: 24.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: const EdgeInsets.only(top: 5),
                            height: 2,
                            width: 12.0,
                          ),
                        ],
                      )
                          : ImageIcon(
                        Image.asset('assets/icons/home.png').image,
                        size: 24.0,
                      ),
                      _selectedIndex == 0
                          ? const Text(
                        '',
                        style: TextStyle(fontSize: 14.0),
                      )
                          : const Text(''),
                    ],
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6.0,
                    children: [
                      _selectedIndex == 1
                          ? Column(
                        children: [
                          ImageIcon(
                            Image.asset('assets/icons/notes.png')
                                .image,
                            size: 24.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),

                            margin: const EdgeInsets.only(top: 5),
                            height: 2,
                            width: 12.0,
                          ),
                        ],
                      )
                      //background: rgba(246, 220, 220, 1);
                          : ImageIcon(
                        Image.asset('assets/icons/notes.png').image,
                        size: 24.0,
                      ),
                    ],
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6.0,
                    children: [
                      _selectedIndex == 2
                          ? Column(
                        children: [
                          ImageIcon(
                            Image.asset('assets/icons/news.png')
                                .image,
                            size: 24.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: const EdgeInsets.only(top: 5),
                            height: 2,
                            width: 12.0,
                          ),
                        ],
                      )
                          : ImageIcon(
                        Image.asset('assets/icons/news.png').image,
                        size: 24.0,
                      ),
                      _selectedIndex == 2
                          ? const Text(
                        '',
                        style: TextStyle(fontSize: 14.0),
                      )
                          : const Text(''),
                    ],
                  ),
                  label: "",
                ),





              ],
              currentIndex: _selectedIndex,
              showUnselectedLabels: false,
              selectedLabelStyle: const TextStyle(fontSize: 0.0),
              unselectedLabelStyle: const TextStyle(fontSize: 0.0),
              unselectedIconTheme:
              const IconThemeData(color: Colors.black, size: 20.0),
              selectedIconTheme: const IconThemeData(color: Colors.black),
              onTap: _onItemTapped,
             backgroundColor:Color.fromRGBO(255, 255, 221, 1),
             // backgroundColor: Colors.black,
           fixedColor: Color.fromRGBO(255, 255, 221, 1),


            ),
          ),
        ),
        ),

      ),
    );
  }
}

ProfileScreen() {
}

Notify() {
}

Add() {
}

Gallery() {
}

Home() {
}
