import 'package:flutter/material.dart';
import 'package:vtsproject/homescreen.dart';

class SignUpScreen extends StatefulWidget {
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

   void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue[900],
       body: new Column(
        children: <Widget>[
          SizedBox(height: 34.0,),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Center( 
                child: new Icon(                
                Icons.track_changes,
                size:80.0,            
                color: Colors.white,
                )
             
              ),
          ),
          Container(
            padding: EdgeInsets.only(top: 14.0,left: 20.0,right: 20.0),
            child: Column(
              children: <Widget>[
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    )
                  ),
                   keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.0,),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Surname',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    )
                  ),
                   keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    )
                  ),
                   keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.0,),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    )                 
                  ),
                  keyboardType: TextInputType.text,
                        obscureText: true,
                ),
                  SizedBox(height: 25.0,),
                      Container(
                        height: 40.0,
                       
                        child: new Material(           
                          borderRadius:BorderRadius.circular(20.0),
                          shadowColor: Colors.teal,
                          color: Colors.green,
                          elevation: 7.0,
                          child: GestureDetector(
                            
                            onTap: (){},
                            child: Center(
                              child: Text(
                                'Create Account',
                                style:TextStyle(
                                  color: Colors.white,
                                )
                                
                              ),
                            ),                     
                          ),
                        ),
                      ),  
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'have account?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 16.0
                  )
              ),
              SizedBox(width: 5.0,),
             InkWell(
               onTap: navigationPage,
               child: Text(
                'Login here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 16.0
                  )
              ),
             )
            ],
          )
        ],
      ),
    );
  }
}