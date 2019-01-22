import 'package:flutter/material.dart';
import 'package:vtsproject/dashboard.dart';
import 'package:vtsproject/signup.dart';
class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

    void navigationDashPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue[900],
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0.5,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person,color: Colors.white,),
             onPressed: () {
               print("Tauzeni Wakapenga");
             },
          )
        ],
        title: Center(
          child: new Text(
            "Logn in",
            style: new TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        
      ),
      body: new Column(
        children: <Widget>[
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
                SizedBox(height: 20.0,),
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
                SizedBox(height: 5.0,),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top:15.0,left: 20.0),
                  child: InkWell(
                    child: Text(
                    'Forgot password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      decoration: TextDecoration.underline
                    ),
                  ),
                  ),
                ),
                  // new Padding(padding: const EdgeInsets.only(top: 40.0)),
                  SizedBox(height: 8.0,),
                      Container(
                        height: 40.0,
                       
                        child: new Material(           
                          borderRadius:BorderRadius.circular(20.0),
                          shadowColor: Colors.teal,
                          color: Colors.teal,
                          elevation: 7.0,
                          child: GestureDetector(
                            
                            onTap: navigationDashPage,
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style:TextStyle(
                                  color: Colors.white,
                                )
                                
                                
                              ),
                            ),                     
                          ),
                        ),
                      ),
                       SizedBox(height: 18.0,),
                     Container(
                        height: 40.0,                      
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Center(
                                child: Text(
                                  'Login with google',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              )
                            ],
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
                'don\'t have account?',
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
                'SIGN UP',
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