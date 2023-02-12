import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: Text(

            "Weather Forecast",
          ),
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(

    child: Column(
      children: [
        _searchCity(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _cityDetails(),
                Divider(),
                Divider(),
                _temperatureDetails(),
                Divider(),
                Divider(),
                _extraWeatherDetails(),
                Divider(),
                Divider(),
                const Text("7-DAY WEATHER FORECAST", style: TextStyle(color: Colors.white),),
                Divider(),
                Divider(),
                _bottomDetails(),
              ],
        ),
          ),
        ),
      ],
    ),
  );
}

Row _searchCity() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: 300,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon (Icons.search),
            border: OutlineInputBorder(),
            labelText: 'Enter City Name',
            ),
          ),
        ),
      ),
  ],
  );
}

Row _cityDetails() {
  return Row(

    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon(Icons.wb_sunny, size: 50,),
        ],
      ),
      SizedBox(width: 16,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          children: const [
            Text("Moscow, RU", style: TextStyle(fontSize: 42, color: Colors.white),
            ),

          ],
        ),
        Row(
          children: const [
            Text("Friday, Feb 10, 2023", style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ],
        ),
            ],
      ),
    ],
  );

}

Row _temperatureDetails() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.wb_sunny, size: 60, color: Colors.white,),
        ],
      ),
      SizedBox(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("14 °F", style: TextStyle(fontSize: 32, color: Colors.white),),
            ],
          ),
          Row(
            children: [
              Text("LIGHT SNOW", style: TextStyle(fontSize: 16, color: Colors.white),),
            ],
          ),
        ],
      )
    ],
  );
}

Row _extraWeatherDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: const [
          Icon(Icons.ac_unit, color: Colors.white),
          Text("5", style: TextStyle(fontSize: 20, color: Colors.white),),
          Text("km/hr", style: TextStyle(fontSize: 15, color: Colors.white),),
        ],
      ),
      Column(
        children: const [
          Icon(Icons.ac_unit, color: Colors.white),
          Text("3", style: TextStyle(fontSize: 20, color: Colors.white),),
          Text("%", style: TextStyle(fontSize: 15, color: Colors.white),),
        ],
      ),
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white,),
          Text("20", style: TextStyle(fontSize: 20, color: Colors.white),),
          Text("%", style: TextStyle(fontSize: 15, color: Colors.white),),
        ],
      ),
    ],
  );
}

Widget _bottomDetails() {
  return Container(
    width: 350,
    height: 100,
    child: ListView(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      itemExtent: 170,
      children: const [
        ListTile(
          title: Text("Friday", style: TextStyle(fontSize: 18, color: Colors.white),),
          subtitle: Text("6 °F", style: TextStyle(fontSize: 16, color: Colors.white),),
          trailing: Icon(Icons.wb_sunny, color: Colors.white,),
        ),
        ListTile(
          title: Text("Saturday", style: TextStyle(fontSize: 18, color: Colors.white),),
          subtitle: Text("5 °F", style: TextStyle(fontSize: 16, color: Colors.white),),
          trailing: Icon(Icons.wb_sunny, color: Colors.white,),
        ),
        ListTile(
          title: Text("Sunday", style: TextStyle(fontSize: 18, color: Colors.white),),
          subtitle: Text("22 °F", style: TextStyle(fontSize: 16, color: Colors.white),),
          trailing: Icon(Icons.wb_sunny, color: Colors.white,),
        ),
        ListTile(
          title: Text("Monday", style: TextStyle(fontSize: 18, color: Colors.white),),
          subtitle: Text("6 °F", style: TextStyle(fontSize: 16, color: Colors.white),),
          trailing: Icon(Icons.cloud, color: Colors.white,),
        ),
        ListTile(
          title: Text("Tuesday", style: TextStyle(fontSize: 18, color: Colors.white),),
          subtitle: Text("6 °F", style: TextStyle(fontSize: 16, color: Colors.white),),
          trailing: Icon(Icons.wb_sunny, color: Colors.white,),
        ),
        ListTile(
          title: Text("Wednesday", style: TextStyle(fontSize: 18, color: Colors.white),),
          subtitle: Text("6 °F", style: TextStyle(fontSize: 16, color: Colors.white),),
          trailing: Icon(Icons.wb_sunny, color: Colors.white,),
        ),
        ListTile(
          title: Text("Thursday", style: TextStyle(fontSize: 18, color: Colors.white),),
          subtitle: Text("6 °F", style: TextStyle(fontSize: 16, color: Colors.white),),
          trailing: Icon(Icons.wb_sunny, color: Colors.white,),
        ),
      ],
    ),
  );
}