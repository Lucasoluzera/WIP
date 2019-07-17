import 'package:flutter/material.dart';
import 'package:iwent/src/login/login-widget.dart';


class EmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(        
        width: 500,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [            
            Colors.amberAccent[100],
            Colors.amber[800],
            ],
          ),
        ),
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
          bottom: 10,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 60,
              alignment: Alignment.center,
              child:
                  Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: 'Righteous',
                    fontSize: 70,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
              ),
            ),


            SizedBox(
              height: 100,
            ),

            TextFormField(
              keyboardType: TextInputType.emailAddress,    
              cursorColor: Colors.black,
              style: new TextStyle( fontSize: 20, fontFamily: 'Overpass'),       
              decoration: InputDecoration(          
                labelText: "E-mail",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder( 
                borderRadius: BorderRadius.circular(10.0),
                ),
                labelStyle: TextStyle(
                  fontFamily: 'Overpass',
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),


            SizedBox(
              height: 150,
            ),

            Container(
               height: 60,
               alignment: Alignment.center,
               decoration: BoxDecoration(
                border: new Border.all(
                  color: Colors.black
                ),
                color: Colors.transparent,      
                borderRadius: BorderRadius.all(          
                Radius.circular(70),
                 ), 
               ),
               child: SizedBox.expand(
                 child: FlatButton(
                   child: Row(
                     children: <Widget>[     
                        SizedBox(
                          width: 90,
                        ),                 
                       Text(
                         "Continuar",
                         textAlign: TextAlign.left,
                         style: TextStyle(
                           fontFamily: 'Overpass',
                           color: Colors.black,
                           fontSize: 20,
                         ),
                       ),
                     ],
                   ),
                   onPressed: () =>{},
                 ),            
               ),
            ),

            SizedBox(
              height: 100,
            ),

              Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                onPressed: () =>{
                     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()),) 
                   },
              ),
            ),        

          ],
        ),
               
      ),     
    );
  }
}