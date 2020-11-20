import 'package:flutter/material.dart';
import 'myhomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ROCH ELECTRONICS'),
        ),
        body: Body());
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name;
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyhomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          controller: this.controller,
          decoration: InputDecoration(
            prefix: Icon(Icons.people),
            labelText: "UserName",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5)),
            suffix: IconButton(
              icon: Icon(Icons.check),
              splashColor: Colors.blue,
              tooltip: 'Submit',
              onPressed: this.click,
            ),
          ),
        ),
      ),
    );
  }
}
