import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/designCourse/courseInfoScreen.dart';
import 'package:best_flutter_ui_templates/designCourse/designCourseAppTheme.dart';
import 'package:best_flutter_ui_templates/designCourse/popularCourseListView.dart';

class Audio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            //getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Temas Populares",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  letterSpacing: 0.27,
                                  color: DesignCourseAppTheme.darkerText,
                                ),
                              ),
                              Flexible(
                                child: PopularCourseListView(
                                  callBack: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => CourseInfoScreen(),),);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
          ],
        );
  }
}