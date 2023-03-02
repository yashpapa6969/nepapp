import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  Padding(padding: const EdgeInsets.all(20),
        child: ListView(
              scrollDirection: Axis.vertical,
               children: [
                 Container(
                   margin: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     color:                 const Color.fromRGBO(221, 161, 7,1),

                       borderRadius: BorderRadius.circular(6.0),
                     boxShadow: const [
                       BoxShadow(
                         color: Color(0x260081ff),
                         offset: Offset(0, 3),
                         blurRadius: 20,
                       ),
                     ],
                   ),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             const Text("Note semester",

                               style: TextStyle(
                                 fontFamily: 'Roboto',
                                 fontSize: 12,
                                 color: Color(0xffffffdd),
                                 letterSpacing: 0.24,
                                 fontWeight: FontWeight.w500,
                                 height: 2,
                               ),
                               textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                               softWrap: false,
                               overflow: TextOverflow.fade,
                               maxLines: 1,
                             ),
                             Container(
                               width: 100,
                               height: 30,
                               decoration: BoxDecoration(
                                 color: const Color(0xffc54f0d),
                                 borderRadius: BorderRadius.circular(6.0),
                               ),
                               child: const Center(
                                 child: Text(
                                   "View Details",
                                   style: TextStyle(
                                     fontFamily: 'lato',
                                     fontSize: 12,
                                     color: Colors.white,
                                     height: 2,
                                   ),
                                   textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                   softWrap: false,
                                 ),
                               ),
                             ),
                             // SizedBox(
                             //     width: 100,
                             //     height: 30,
                             //     child: ElevatedButton(
                             //       child: const Text(
                             //         "Reschedule",
                             //         style: TextStyle(
                             //           fontFamily: 'Roboto',
                             //           fontSize: 12,
                             //           color: ConstantColors.white,
                             //           height: 2,
                             //         ),
                             //         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                             //         softWrap: false,
                             //       ),
                             //       onPressed: () => {},
                             //       style: ElevatedButton.styleFrom(
                             //         backgroundColor: ConstantColors.primaryColor,
                             //       ),
                             //     )),
                           ],
                         ),
                       ),
                       const Divider(),
                       Container(
                         padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [

                                 const SizedBox(
                                   width: 10,
                                 ),
                                 Container(
                                   margin: const EdgeInsets.only(top: 5),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: const [
                                       Text("Notes title",
                                         overflow: TextOverflow.fade,
                                         maxLines: 2,
                                         style: TextStyle(
                                           fontFamily: 'Roboto',
                                           fontSize: 14,
                                           color: Color(0xcc000000),
                                           fontWeight: FontWeight.w500,
                                           height: 1.2307692307692308,
                                         ),
                                         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                       ),
                                       SizedBox(
                                         height: 5,
                                       ),

                                       Text("Subject",
                                         overflow: TextOverflow.fade,
                                    style: TextStyle(
                                           fontFamily: 'Roboto',
                                           fontSize: 12,
                                           color: Color(0xffc54f0d),
                                           height: 2.4,
                                         ),
                                         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                         softWrap: false,
                                       ),
                                       SizedBox(
                                         height: 10,
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),

                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
            ),
      ),

      );  }
}
