import 'dart:convert';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List info = [];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
     info = jsonDecode(value);

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                      color: color.AppColor.homePageTitle,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                    size: 20, color: color.AppColor.homePageIcons),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: color.AppColor.homePageIcons),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: color.AppColor.homePageIcons)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                      color: color.AppColor.homePageSubtitle,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    color: color.AppColor.homePageDetail,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(80)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 10),
                        blurRadius: 10,
                        color: color.AppColor.gradientSecond.withOpacity(0.2))
                  ]),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next workout',
                      style: TextStyle(
                        fontSize: 16,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Legs Toning',
                      style: TextStyle(
                        fontSize: 25,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'and Glutes Workout',
                      style: TextStyle(
                        fontSize: 25,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '60 min',
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                    color: color.AppColor.gradientFirst,
                                    offset: Offset(4, 8),
                                    blurRadius: 10)
                              ]),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/card.jpg'),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(8, 10),
                              blurRadius: 40,
                              color: color.AppColor.gradientSecond
                                  .withOpacity(0.3)),
                          BoxShadow(
                              offset: Offset(-1, -5),
                              blurRadius: 10,
                              color: color.AppColor.gradientSecond
                                  .withOpacity(0.3))
                        ]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    margin: EdgeInsets.only(right: 200, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/figure.png')),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You are doing great' , style: TextStyle(
                          fontSize: 18,
                          color: color.AppColor.homePageDetail,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 10,),
                        RichText(text: TextSpan(
                          text: "Keep it up\n",
                          style: TextStyle(
                            fontSize: 16,
                            color: color.AppColor.homePagePlanColor
                          ),
                          children: [
                            TextSpan(
                              text: 'stick to yout plan'
                            )
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Area of focus",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.homePageTitle
                  ),
                )
              ],
            ),
            Expanded(child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(itemCount: (info.length.toDouble()/2).toInt() ,itemBuilder: (_, index){
                  int a = 2*index;
                  int b = 2*index + 1;
                  return Row(
                    children: [
                      Container(
                        height: 170,
                        width: (MediaQuery.of(context).size.width - 90) / 2,
                        padding: EdgeInsets.only(bottom: 5),
                        margin: EdgeInsets.only(left: 30, bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow:[ BoxShadow(
                            offset: Offset(5,5),
                            blurRadius: 3,
                            color: color.AppColor.gradientSecond.withOpacity(0.1)
                          ),BoxShadow(
                              offset: Offset(-5,-5),
                              blurRadius: 3,
                              color: color.AppColor.gradientSecond.withOpacity(0.1)
                          ),],
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(info[a]['img'])
                          )
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                             info[a]['title'],
                              style: TextStyle(
                                fontSize: 20,
                                color: color.AppColor.homePageDetail,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 170,
                        width: (MediaQuery.of(context).size.width - 90) / 2,
                        padding: EdgeInsets.only(bottom: 5),
                        margin: EdgeInsets.only(left: 30, bottom: 15, top: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow:[ BoxShadow(
                                offset: Offset(5,5),
                                blurRadius: 3,
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                            ),BoxShadow(
                                offset: Offset(-5,-5),
                                blurRadius: 3,
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                            ),],
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(info[b]['img'])
                            )
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              info[b]['title'],
                              style: TextStyle(
                                fontSize: 20,
                                color: color.AppColor.homePageDetail,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                }),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
