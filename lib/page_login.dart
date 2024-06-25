import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(MyApp());

class page_login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Form',
      theme: ThemeData(
        fontFamily: GoogleFonts.acme().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: RegistrationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String _name = '';
  String _username = '';
  String _password = '';
  double _weight = 60.0;
  double _height = 170.0;
  String _selectedMajor = 'Computer Science';
  String _selectedLanguage = 'Thai';
  bool _agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: GestureDetector(
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlueAccent,
                    ),
                    child: Icon(
                      Icons.person_rounded,
                      size: 60.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "REGISTER",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.blue, width: 2.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0)),
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.blue, width: 2.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0)),
                  onChanged: (value) {
                    setState(() {
                      _username = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.blue, width: 2.0),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0)),
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Text('Weight: ${_weight.toStringAsFixed(1)} kg'),
              Slider(
                value: _weight,
                min: 40.0,
                max: 150.0,
                divisions: 110,
                onChanged: (value) {
                  setState(() {
                    _weight = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              Text('Height: ${_height.toStringAsFixed(1)} cm'),
              Slider(
                value: _height,
                min: 100.0,
                max: 250.0,
                divisions: 150,
                onChanged: (value) {
                  setState(() {
                    _height = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              Text('Major:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Wrap(
                children: <Widget>[
                  ChoiceChip(
                    label: Text(' Computer Science  '),
                    selected: _selectedMajor == 'Computer Science',
                    onSelected: (selected) {
                      setState(() {
                        _selectedMajor = 'Computer Science';
                      });
                    },
                    selectedColor: Colors.green,
                    backgroundColor: Colors.blueAccent[100],
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  ChoiceChip(
                    label: Text(' Information Technology '),
                    selected: _selectedMajor == 'Information Technology',
                    onSelected: (selected) {
                      setState(() {
                        _selectedMajor = 'Information Technology';
                      });
                    },
                    selectedColor: Colors.green,
                    backgroundColor: Colors.blueAccent[100],
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Text('Language:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Row(
                children: <Widget>[
                  Radio<String>(
                    value: 'Thai',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  Text('Thai'),
                  Radio<String>(
                    value: 'English',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  Text('English'),
                  Radio<String>(
                    value: 'Chinese',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  Text('Chinese'),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _agreeTerms,
                    onChanged: (value) {
                      setState(() {
                        _agreeTerms = value!;
                      });
                    },
                  ),
                  Text('Agree to Terms & Conditions'),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    print('Name: $_name');
                    print('Username: $_username');
                    print('Password: $_password');
                    print('Weight: $_weight');
                    print('Height: $_height');
                    print('Major: $_selectedMajor');
                    print('Language: $_selectedLanguage');
                    print('Agree to Terms: $_agreeTerms');
                  },
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
