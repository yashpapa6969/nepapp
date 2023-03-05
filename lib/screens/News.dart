import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nepapp/provider/user_provider.dart';
import 'package:provider/provider.dart';
class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin{
  static var _isInit = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInit) {
      Provider.of<UserProvider>(context, listen: false).Announcement(context);
      setState(() {
        _isInit = false;
      });
    }
  }

  @override
  void dispose() {
    setState(() {
      _isInit = true;
    });

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<UserProvider>(context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(padding: const EdgeInsets.all(20),
        child: ListView.builder(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        itemCount: data.NewsItems.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i],
        value: data.NewsItems[i],
          child:
         Container(
           padding: const EdgeInsets.only(left: 10,top: 10),
           width: 327,
           height: 150,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             boxShadow: [
               const BoxShadow(
                 color: Color(0x66000000),
                 blurRadius: 15,
                 offset: Offset(0, 8),
               ),
             ],
             color: const Color(0xffc54f0d),
           ),
           child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    child:   Text(
                      "Title:" + "${data.NewsItems[i].title}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Chillax",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                   Text(
                    "Date:" + "${data.NewsItems[i].date}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Chillax",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10,),
                   Text(
                    "Description:" + "${data.NewsItems[i].text}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Chillax",
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                ],
              ),
         ),
          ),




        ),
      ),

    );
  }
}
