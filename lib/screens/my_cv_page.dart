import 'package:flutter/material.dart';
import 'package:my_cv_app/constants.dart';

class MyCVPage extends StatelessWidget {
  const MyCVPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //Avatar Image
          children: [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 90.0,
              foregroundImage: AssetImage("assets/geralt.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Berk Kaya",
              style: kTitleTextStyle,
            ),
            Text(
              "Flutter Developer",
              style: kRegularTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.blue,
                    size: 30,
                  ),
                  title: Center(
                      child:
                          Text("+90 123123123", style: kCardElementTextStyle)),
                  trailing: SizedBox(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  title: Center(
                    child: Text(
                      "email@email.com",
                      style: kCardElementTextStyle,
                    ),
                  ),
                  trailing: SizedBox(),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Education",
                          textAlign: TextAlign.center,
                          style: kBoldTextStyle,
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Istanbul Aydin University",
                          textAlign: TextAlign.center,
                          style: kRegularSmallTextStyle,
                        ),
                        Text(
                          "GPA: 3.50",
                          textAlign: TextAlign.center,
                          style: kRegularSmallTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Work Experince",
                          textAlign: TextAlign.center,
                          style: kBoldTextStyle,
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Flutter Developer",
                          textAlign: TextAlign.center,
                          style: kRegularSmallTextStyle,
                        ),
                        Text(
                          "Junior Witcher",
                          textAlign: TextAlign.center,
                          style: kRegularSmallTextStyle,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
