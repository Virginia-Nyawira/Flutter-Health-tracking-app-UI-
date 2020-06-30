import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
//            height: 40,
//            width: 40,
                    margin: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue[100],
                      child: Icon(Icons.perm_identity),
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Audrey B",
                        style: TextStyle(
                            fontFamily: "Lobster",
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Text(
                        "26 June 2020",
                        style: TextStyle(
                            fontFamily: "Lobster",
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(width: 112),
                  FlatButton(
                      onPressed: () {},
                      child: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            width: 50,
                            child: Icon(
                              Icons.notifications,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              width: 20,
                              height: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Lobster",
                                        fontSize: 15),
                                  ),
                                ),
                              ))
                        ],
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(120, 30, 20, 25),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.lightBlue[100]),
                      child: Image.asset("images/running.png", width: 80),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text("6534",
                        style: TextStyle(
//                            fontFamily: "Anton",
                        fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: 2.0,
                            color: Colors.lightBlue[300])),
                  ]),
            ),
          ),
//          Padding(
//            padding: EdgeInsets.only(top: 10),
//          ),
          Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "0 Steps",
                        style: TextStyle(
                            fontFamily: "Lobster",
                            //fontSize: 40,
                            letterSpacing: 2.0,
                            color: Colors.grey.withBlue(200)),
                      ),
                      Text(
                        "9000 Steps",
                        style: TextStyle(
                            fontFamily: "Lobster",
                            //fontSize: 40,
                            letterSpacing: 2.0,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.7,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.deepPurple,
                  ),
                  SizedBox(height: 18.0),
                  Text(
                    "STEPS TAKEN",
                    style: TextStyle(
                        fontFamily: "Lobster",
                        //fontSize: 40,
                        letterSpacing: 2.0,
                        color: Colors.black54),
                  ),
                  Text(
                    "You have walked 136 mins today",
                    style: TextStyle(
                        fontFamily: "Lobster",
                        //fontSize: 40,
                        letterSpacing: 2.0,
                        color: Colors.black87),
                  )
                ],
              )),
          Divider(
            height: 25,
            color: Colors.grey[300],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "DISTANCE",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Pangolin"),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "8500",
                              style: TextStyle(
                                color: Colors.indigoAccent,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                              text: "m",
                              style: TextStyle(
                                  color: Colors.grey.withBlue(200),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Lobster")),
                        ]))
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "CALORIES",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Pangolin"),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "250",
                              style: TextStyle(
                                color: Colors.indigoAccent,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                              text: "cal",
                              style: TextStyle(
                                  color: Colors.grey.withBlue(200),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Lobster")),
                        ]))
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "HEART RATE",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Pangolin"),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "101",
                              style: TextStyle(
                                color: Colors.indigoAccent,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                              text: "bpm",
                              style: TextStyle(
                                  color: Colors.grey.withBlue(200),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Lobster")),
                        ]))
                      ],
                    ))
              ],
            ),
          ),
          Divider(
            height: 25,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("DIET PROGRESS",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Pangolin")),
                Row(
                  children: <Widget>[
                    Image.asset("images/arrowdown.png", width: 20),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Text("500 Calories",
                        style: TextStyle(
                            color: Colors.orange[300],
                            fontWeight: FontWeight.w600,
                            fontFamily: "Pangolin"))
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Cards(
                    title: "Carbohydrates",
                    total: 350,
                    achieved: 200,
                    image: Image.asset("images/boltt.jpeg", width: 20),
                    color: Colors.orange),
                Cards(
                    title: "Protein",
                    total: 350,
                    achieved: 300,
                    image: Image.asset("images/fish.png", width: 20),
                    color: Colors.blue[300]),
                Cards(
                    title: "Fats",
                    total: 100,
                    achieved: 200,
                    image: Image.asset("images/greenba.png", width: 20),
                    color: Colors.green)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String title;
  final double total;
  final double achieved;
  final Image image;
  final Color color;

  const Cards(
      {Key key,
      @required this.title,
      @required this.total,
      @required this.achieved,
      @required this.image,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right:10),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blueGrey[200], width: 2),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title.toUpperCase(),
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 8.0,
                        fontFamily: "Pangolin"
                    )),
                achieved < total
                    ? Image.asset(
                  "images/arrowdown.png",
                  width: 20,
                )
                    : Image.asset(
                  "images/getfile.png",
                  width: 20,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
            ),
            CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 8.0,
              percent: achieved / (total < achieved ? achieved : total),
              circularStrokeCap: CircularStrokeCap.round,
              center: image,
              progressColor: color,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: achieved.toString(),
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Pangolin",
                      fontSize: 20)),
              TextSpan(
                text: "/$total",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Pangolin",
                    fontSize: 12),
              )
            ]))
          ]),
    );
  }
}
