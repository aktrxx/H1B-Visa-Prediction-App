import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController employerNameController = TextEditingController();
  TextEditingController socNameController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController fullTimePositionController = TextEditingController();
  TextEditingController prevailingWageController = TextEditingController();
  TextEditingController worksiteController = TextEditingController();

  String _prediction = '';

  Future<void> _makePostRequest() async {
    const String apiUrl = 'http://10.0.2.2:8000/api';

    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        'emp': employerNameController.text,
        'soc': socNameController.text,
        'job': jobTitleController.text,
        'full': fullTimePositionController.text,
        'wage': prevailingWageController.text,
        'work': worksiteController.text,
      },
    );

    if (response.statusCode == 200) {
      setState(() {
        _prediction = response.body;
      });
    } else {
      setState(() {
        _prediction = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: employerNameController,
                decoration: InputDecoration(hintText: 'Employer name'),
              ),
              TextField(
                controller: socNameController,
                decoration: InputDecoration(hintText: 'SOC Name'),
              ),
              TextField(
                controller: jobTitleController,
                decoration: InputDecoration(hintText: 'Job title'),
              ),
              TextField(
                controller: fullTimePositionController,
                decoration: InputDecoration(hintText: 'Full time position'),
              ),
              TextField(
                controller: prevailingWageController,
                decoration: InputDecoration(hintText: 'Wage'),
              ),
              TextField(
                controller: worksiteController,
                decoration: InputDecoration(hintText: 'Worksite'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _makePostRequest,
                child: Text('Predict'),
              ),
              SizedBox(height: 16.0),
              Text(_prediction),
            ],
          ),
        ),
      ),
    );
  }
}
