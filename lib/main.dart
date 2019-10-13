import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF10DEBA),
        scaffoldBackgroundColor: Color(0xFF0D2D49),
        textTheme: TextTheme(body1: TextStyle(color: Color(0xFF10DEBA)))
      ),
      home: InputPage(),
    );
  }
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor=Color(0xFF10DEBA);
  Color femalecardcolor=Color(0xFF2AB24A);
  void updategender(int gender)
  {
    if(gender==1)
    {
      if(malecardcolor==Color(0xFF10DEBA))
      {
        malecardcolor=Color(0xFF2AB24A);
      }
      else if(malecardcolor==Color(0xFF2AB24A))
      {
        malecardcolor=Color(0xFF10DEBA);
      }
    }
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: <Widget>[
          Container(
            height: 10.0,
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:GestureDetector(
                    onTap:(){
                      setState(() {
                       updategender(1); 
                      });
                    },
                    child:Container(
                      child: Column(
                      children: <Widget>[
                        SizedBox(
                          height:13,
                        ),
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 60,
                        ),
                        SizedBox(
                          height:14.0
                        ),
                        Text("MALE",style: TextStyle(color: Colors.white,fontSize: 20.0),)
                      ],
                    ),
                  width: 130.0,
                  height: 170.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: malecardcolor,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ) ,
                  ),
                ),
                
                Expanded(child:Container(
                  child: Column(
                      children: <Widget>[
                        SizedBox(
                          height:13,
                        ),
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 60,
                        ),
                        SizedBox(
                          height:14.0
                        ),
                        Text("FEMALE",style: TextStyle(color: Colors.white,fontSize: 20.0),)
                      ],
                    ),
                  width: 130.0,
                  height: 170.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF10DEBA),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ) ,)
              ],
            ),

          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:Container(
                    width: 100.00,
                    height: 130.0,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Color(0xFF10DEBA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:Container(
                    width: 100.00,
                    height: 130.0,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Color(0xFF10DEBA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:Container(
                    width: 100.00,
                    height: 130.0,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Color(0xFF10DEBA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                )
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height:70.0,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                color: Color(0xFFE72C30),
                borderRadius: BorderRadius.circular(10.0)
              ),
            ),
        ],

      ) ,
    );
  }
}
