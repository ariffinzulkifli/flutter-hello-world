import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {

  // List fruits = ['Apple', 'Banana', 'Coconut'];
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final url = 'https://corona.lmao.ninja/v3/covid-19/countries';
  
  List data;
  var isLoading = false;

  Future getData() async {

    setState(() {
      isLoading = true;
    });

    // var response = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      setState(() {
        isLoading = false;
      });
    }
    else {
      throw Exception('Failed to load stations information');
    }

    // setState(() {
    //   data = json.decode(response.body);
    //   print(data);
    // });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('COVID19 API'),
        ),
        body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index){
            // return ListTile(
            //   title: Text(data[index]['state']),
            // );
            return Card(
              child: ListTile(
                leading: Icon(Icons.flag),
                title: Text( data[index]['country'] ),
                subtitle: Text( 'Cases: ' + data[index]['cases'].toString() ),
                trailing: data[index]['todayDeaths'] == 0 ? Icon( Icons.star, color: Colors.green) : Icon( Icons.star, color: Colors.red),
              ),
            );
          },
        )
        // body: ListView(
        //   children: <Widget>[
        //     ListTile(
        //       leading: Text('Leading'),
        //       title: Text('Title'),
        //       subtitle: Text('Subtitle'),
        //       trailing: Text('Trailing'),
        //       onTap: () {
        //         print('1st List');
        //       },
        //     ),
        //     Divider(
        //       thickness: 2,
        //       color: Colors.blue,
        //     ),
        //     ListTile(
        //       leading: Text('Leading'),
        //       title: Text('Title'),
        //       subtitle: Text('Subtitle'),
        //       trailing: Text('Trailing'),
        //       onTap: () {
        //         print('2nd List');
        //       },
        //     )
        //   ],
        // ),
      ),
    );
  }
}