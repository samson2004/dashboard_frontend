import 'package:dashboard_frontend/data/scheduled_data.dart';
import 'package:dashboard_frontend/widget/customcardwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class scheduledwidget extends StatelessWidget {
  const scheduledwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduledData = ScheduledData();
    return Customcard(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Scheduled',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 24,
          ),
          Customcard(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(scheduledData.data[0].name),
                  Text(scheduledData.data[0].time)
                ],
              ),
              Icon(Icons.message)
            ],
          )),
          SizedBox(
            height: 18,
          ),
          Customcard(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(scheduledData.data[0].name),
                  Text(scheduledData.data[0].time)
                ],
              ),
              Icon(Icons.message)
            ],
          )),
          SizedBox(
            height: 18,
          ),
          Customcard(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(scheduledData.data[0].name),
                  Text(scheduledData.data[0].time)
                ],
              ),
              Icon(Icons.message)
            ],
          ))
        ],
      ),
    );
  }
}

// Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//             child: Text(
//               'Scheduled',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           SizedBox(
//             height: 24,
//           ),
//           Container(
//             padding: EdgeInsets.all(24.0),
//             child: ListView.builder(
//                 itemCount: scheduledData.data.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Container(
//                         padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: Colors.black87),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(4.0),
//                                   child: Text(scheduledData.data[index].name),
//                                 ),
//                                 SizedBox(
//                                   height: 2,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(4.0),
//                                   child: Text(scheduledData.data[index].time),
//                                 )
//                               ],
//                             ),
//                             Icon(Icons.message)
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 18,
//                       )
//                     ],
//                   );
//                 }),
//           )
//         ],
//       ),
//     );