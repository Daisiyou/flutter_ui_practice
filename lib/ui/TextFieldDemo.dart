import 'package:flutter/material.dart';
import 'package:flutter/services.dart';  //WhitelistingTextInputFormatter

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 300,
            ),
            TextField(
              controller: _editingController,
              onChanged: (value){
                print(value);
              },
              onEditingComplete: (){
                print('EditingComplete');
              },
              onSubmitted: (value){
                print('onSubmitted');
                print(value);
              },
              inputFormatters: [WhitelistingTextInputFormatter(RegExp('[a-z]'))],
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                labelText: 'name',
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
                helperText: 'input your name',
                helperStyle: TextStyle(
                  color: Colors.green,

                ),
//                errorText: 'error text',
                hintText: 'hint text',
//                hasFloatingPlaceholder: false,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
//                border: OutlineInputBorder(borderSide: BorderSide()),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                icon: Icon(
                  Icons.security,
                  color: Colors.blue,
                ),
                labelText: 'password',
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              height: 50,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Submit'),
                onPressed: (){
                  setState(() {
                    _editingController.text='username';
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
