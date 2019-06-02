import 'package:flutter/material.dart';
import 'package:iwent/pages/login.page.dart';


class CadastroPage extends StatelessWidget {
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
              height: 200,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/CadastroPage/users-icon.png")
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            TextFormField(
              keyboardType: TextInputType.emailAddress,    
              cursorColor: Colors.black,
              style: new TextStyle( fontSize: 20, fontFamily: 'Overpass'),       
              decoration: InputDecoration(          
                hintText: "E-mail",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder( 
                borderRadius: BorderRadius.circular(10.0),
                ),
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
               height: 60,
               alignment: Alignment.center,
               decoration: BoxDecoration(
                border: new Border.all(
                  color: Colors.black
                ),
                color: Colors.transparent      
                /*borderRadius: BorderRadius.all(          
                Radius.circular(70),
                ),*/ 
               ),
                 child: FlatButton(
                    child: Text(
                         "CONTINUAR",
                         textAlign: TextAlign.left,
                         style: TextStyle(
                           fontFamily: 'Overpass',
                           color: Colors.black,
                           fontSize: 20,
                         ),
                       ), 
                       onPressed: () =>{}                  
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
                     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),) 
                   },
              ),
            ),        

          ],
        ),
               
      ),     
    );
  }
}