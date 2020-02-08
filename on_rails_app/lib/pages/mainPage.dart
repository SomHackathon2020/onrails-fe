import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/components/actividadComponent.dart';
import 'package:pie_chart/pie_chart.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Stack(
                    children: <Widget>[
                    generatePie(context),
                    new Positioned(
                        left: 0,
                        child: new Container(
                          
                        )
                    ),
                    ]
                    ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:20),
                    child: Divider(color: Colors.black)
                    ),
                  initialText(),
                  EventComponent(),
                  EventComponent()
                ], 
        ),
      ),
    );
  }


  Widget generatePie(BuildContext context){
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);

    return PieChart(
        chartType: ChartType.ring,
        dataMap: dataMap,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 30.0,
        chartRadius: MediaQuery.of(context).size.width / 1.8,
        showChartValuesInPercentage: false,
        showChartValues: false,
        showChartValuesOutside: true,
        chartValueBackgroundColor: Colors.grey[200],
        colorList: [Colors.red, Colors.yellow, Colors.blue, Colors.green],
        showLegends: false,
        legendPosition: LegendPosition.bottom,
        decimalPlaces: 0,
        showChartValueLabel: false,
        initialAngle: 90,
        chartValueStyle: defaultChartValueStyle.copyWith(
          color: Color.fromARGB(0, 0, 0, 0)//make values invisible
        ),
    );
  }

  Widget initialText(){
    return Title(color: Colors.black, child: 
                  Text('Te puede interesar...',
                  textAlign: TextAlign.start, 
                  style: TextStyle(
                    fontSize: 22
                  
                  ),)
                  );
  }

  Widget pageViewActivities(){
    return ListView(
      children: <Widget>[
        initialText(),
        EventComponent()
      ],
    );
  }
}