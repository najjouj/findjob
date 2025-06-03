import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 4,
              child: Container(
                height: 55,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade300),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.search,
                          size: 25,
                        )),
                    Expanded(
                        flex: 6,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 10),
                          child: Text("Search for items here"),
                        )),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.black,
                ),
                child: SvgPicture.asset("assets/jobfinder/ic_filter.svg",color: Colors.white,width: 20,height: 20,)),
          )
        ],
      ),
    );
  }
}
