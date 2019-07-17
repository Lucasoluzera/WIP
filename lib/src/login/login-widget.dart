import 'package:flutter/material.dart';
import 'package:iwent/src/register/email-widget.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
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
        ),
        child: ListView(
          children: <Widget>[


            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      child: Image.asset("assets/iw-icon.png")
                    ),
                  ),
                  Text(
                  "iWenT",
                  style: TextStyle(
                    fontFamily: 'Righteous',
                    fontSize: 70,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                ],
              ),
            ),
            
            /*Container(
                child: Text(
                  "iWenT",
                  style: TextStyle(
                    fontFamily: 'Righteous',
                    fontSize: 70,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
            ),*/

            SizedBox(
              height: 40,
            ),

            TextFormField(
              keyboardType: TextInputType.emailAddress,     
              style: new TextStyle( fontSize: 20, fontFamily: 'Overpass'),       
              decoration: InputDecoration(          
                labelText: "E-mail",
                labelStyle: TextStyle(
                  fontFamily: 'Overpass',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  fontFamily: 'Overpass',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                onPressed: () =>{
                     Navigator.push(context, MaterialPageRoute(builder: (context) => EmailWidget()),) 
                   },
              ),
            ),

            SizedBox(
              height: 5,
            ),

            Container(
               height: 60,
               alignment: Alignment.center,
               decoration: BoxDecoration(
                border: new Border.all(
                  color: Colors.white
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
                         "ENTRAR",
                         textAlign: TextAlign.left,
                         style: TextStyle(
                           fontFamily: 'Overpass',
                           color: Colors.white,
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
            ) 
            

          ],
        ),
               
      ),     
    );
  }
}