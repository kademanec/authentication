import 'package:flutter/material.dart';
import 'package:flutter_app5/auth.dart';
import 'package:flutter_app5/auth_provider.dart';
import 'saleshomepage.dart';
import 'taskhomepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({this.onSignedOut});
  final VoidCallback onSignedOut;

  Future<void> _signOut(BuildContext context) async {
    try {
      final BaseAuth auth = AuthProvider.of(context).auth;
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Welcome'),
        actions: <Widget>[
          FlatButton(
            child: Text('Logout', style: TextStyle(fontSize: 17.0, color: Colors.white)),
            onPressed: () => _signOut(context),
          )
        ],
      ),
      body:

      Container(

        child:Center(


          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,


          children: <Widget>[





            RaisedButton(

              color:Colors.blue,
              child: Text('Population Bar Chart'),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context){
                        return SalesHomePage();
                      }
                  ),
                );

              },
            ),

            Image(
              image:
              AssetImage('images/1.jpg'),

            ),

            RaisedButton(

              color:Colors.blue,
              child: Text('Population Pie Chart'),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context){
                        return TaskHomePage();
                      }
                  ),
                );

              },
            ),

          ],

        ),
        ),

      ),
    );
  }
}
