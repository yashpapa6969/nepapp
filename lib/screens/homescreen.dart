import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Container(
      decoration: const BoxDecoration(
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
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.only(left:20,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Hello Username,",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "lato",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                    width: width,
                    child:Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),

                        ),
                        padding: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                           const Text(
                              "Basic Information.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "lato",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Container(width: width,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color(0x99dda107),
                                borderRadius: BorderRadius.all(Radius.circular(20)),

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: const Text(
                                      "Matriculation No.        ${"1MS21CY051"}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: "lato",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                    child: const Text(
                                      "Full Name         ${"Yash Gupta"}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: "lato",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5,), Container(
                                    child: const Text(
                                      "Faculty         ${"BE"}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: "lato",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5,), Container(
                                    child: const Text(
                                      "Major         ${"Cybersecurity"}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: "lato",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5,), Container(
                                    child: const Text(
                                      "Current Semester         ${"III"}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: "lato",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5,),


                                ],
                              ),
                            )
                          ],
                        ),
                    )
                  ),
                  const SizedBox(height: 20,),
                  CarouselSlider( options: CarouselOptions(aspectRatio: 2,viewportFraction: 0.5,initialPage: 0,

                  ),
            items: [
              Container(padding: EdgeInsets.all(5),
                width: width*0.80,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x66000000),
                      blurRadius: 15,
                      offset: Offset(0, 8),
                    ),
                  ],
                  color: Color(0xffc54f0d),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(

                      "Class attendance",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Chillax",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 49,
                      height: 49,
                      child: Stack(
                        children:[
                          Container(
                            width: 49,
                            height: 49,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2.45, ),
                              color: Colors.white,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 9.80,
                                height: 15.87,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(padding: EdgeInsets.all(5),
                width: width*0.80,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x66000000),
                      blurRadius: 15,
                      offset: Offset(0, 8),
                    ),
                  ],
                  color: Color(0xffc54f0d),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(

                      "Class Marks",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Chillax",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 49,
                      height: 49,
                      child: Stack(
                        children:[
                          Container(
                            width: 49,
                            height: 49,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2.45, ),
                              color: Colors.white,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 9.80,
                                height: 15.87,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(padding: EdgeInsets.all(5),
                width: width*0.80,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x66000000),
                      blurRadius: 15,
                      offset: Offset(0, 8),
                    ),
                  ],
                  color: Color(0xffc54f0d),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(

                      "Assignment Submission",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Chillax",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 49,
                      height: 49,
                      child: Stack(
                        children:[
                          Container(
                            width: 49,
                            height: 49,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2.45, ),
                              color: Colors.white,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 9.80,
                                height: 15.87,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(padding: EdgeInsets.all(5),
                width: width*0.80,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x66000000),
                      blurRadius: 15,
                      offset: Offset(0, 8),
                    ),
                  ],
                  color: Color(0xffc54f0d),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(

                      "Wifi Complaint",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Chillax",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 49,
                      height: 49,
                      child: Stack(
                        children:[
                          Container(
                            width: 49,
                            height: 49,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2.45, ),
                              color: Colors.white,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 9.80,
                                height: 15.87,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
                   
                    
                  ),
                  SizedBox(height: 30,),


                  Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                        width: 157,
                        height: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x66000000),
                              blurRadius: 15,
                              offset: Offset(0, 8),
                            ),
                          ],
                          color: const Color(0xffffffdd),
                        ),
                        padding: const EdgeInsets.only(left: 16, right: 11, ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:[
                            const SizedBox(
                              width: 126,
                              child: Text(
                                "Course Registration",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Chillax",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 19.50),
                            const Text(
                              "Select session",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: "Chillax",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 19.50),
                            Container(
                              width: 49,
                              height: 49,
                              child: Stack(
                                children:[
                                  Container(
                                    width: 49,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black, width: 2.45, ),
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 9.80,
                                        height: 15.87,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image
                                          )
                                        ),

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ),
                          Container(
                            width: 157,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                const BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 15,
                                  offset: Offset(0, 8),
                                ),
                              ],
                              color: const Color(0xffffffdd),
                            ),
                            padding: const EdgeInsets.only(left: 10,top: 5,right: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:[
                                 Row(
                                   children: [Container(

                                    width: 92,
                                    child: Text(
                                      "Tuition payment",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: "Chillax",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                ),
                                     Container(height: 30,width: 30,
                                       decoration: BoxDecoration(
                                           image: DecorationImage(image: Image.asset("assets/payment.png").image)
                                       ),
                                     ),
                            ]
                                 ),


                                const SizedBox(height: 45),
                                Container(
                                  width: 49,
                                  height: 49,
                                  child: Stack(
                                    children:[
                                      Container(
                                        width: 49,
                                        height: 49,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.black, width: 2.45, ),
                                          color: Colors.white,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            width: 9.80,
                                            height: 15.87,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
              ]
                      ),
                      SizedBox(height: 20,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 157,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 15,
                                  offset: Offset(0, 8),
                                ),
                              ],
                              color: Color(0xffffffdd),
                            ),
                            padding: const EdgeInsets.only(left: 16, right: 11, top: 10, bottom: 10, ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:[
                                SizedBox(
                                  width: 101,
                                  child: Text(
                                    "Hostel allocation",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Chillax",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 24.70,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(image: Image.asset("assets/hostel.png").image,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 13),
                                Container(
                                  width: 49,
                                  height: 49,
                                  child: Stack(
                                    children:[
                                      Container(
                                        width: 49,
                                        height: 49,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.black, width: 2.45, ),
                                          color: Colors.white,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            width: 9.80,
                                            height: 15.87,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image),

                                              ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 157,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 15,
                                  offset: Offset(0, 8),
                                ),
                              ],
                              color: Color(0xffffffdd),
                            ),
                            padding: const EdgeInsets.only(left: 11, right: 10, top: 10, bottom: 10, ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:[
                                SizedBox(
                                  width: 92,
                                  child: Text(
                                    "Class Schedule",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: "Chillax",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 9),
                                Container(
                                  width: 24,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: Image.asset("assets/schedule.png").image),

                                        borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                SizedBox(height: 9),
                                Container(
                                  width: 49,
                                  height: 49,
                                  child: Stack(
                                    children:[
                                      Container(
                                        width: 49,
                                        height: 49,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.black, width: 2.45, ),
                                          color: Colors.white,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            width: 9.80,
                                            height: 15.87,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(image: Image.asset("assets/icons/arrow.png").image
                                              ),

                                              ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
            ]
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
