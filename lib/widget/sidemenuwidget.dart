import 'package:dashboard_frontend/const/constant.dart';
import 'package:dashboard_frontend/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenudata();
    return Container(
      color: Color(0xff181822),
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context, index) => buildmenuEntry(data, index)),
    );
  }

  buildmenuEntry(SideMenudata data, int index) {
    final isselected = selectedindex == index;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: isselected ? Const.selectioncolor : Colors.transparent),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                data.menu[index].icon,
                color: isselected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: isselected ? FontWeight.w600 : FontWeight.normal,
                  color: isselected ? Colors.black : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
