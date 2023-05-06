import 'package:flutter/material.dart';
import 'package:telaslogin/cadastro.dart';
import 'package:telaslogin/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key, required MaterialAccentColor primarySwatch }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
            autofocus: true,
             keyboardType: TextInputType.emailAddress,
             style: new TextStyle(color: Colors.black, fontSize: 20),
             decoration: InputDecoration(
               icon: Icon(Icons.email),
               labelText: "E-mail",
               labelStyle: TextStyle(color: Colors.black,fontSize: 15)
             ),
        ),
        TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.black, fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
               labelText: "Senha",
               labelStyle: TextStyle(color: Colors.black,fontSize: 15)
             ),
             
           ),
            Divider(),
           ButtonTheme(
           height: 60.0,
           child: TextButton(
               style: TextButton.styleFrom(
                   backgroundColor: Colors.green,
                   fixedSize: Size(25, 15)
               ),
               child: Text(
                 'Entrar',
                 style: TextStyle(
                 color: Colors.white,
                 fontSize: 15
                 ),
              ),
               onPressed: () {Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Homepage()));},
             ),
            
           ),
         Divider(),
           ButtonTheme(
           height: 90.0,
           child: TextButton(
               child: Text(
                 "Cadastrar-se",
                 style: TextStyle(
                decoration: TextDecoration.underline,
                 color: Colors.blueAccent,
                 fontSize: 15
                 ),
               ),
               onPressed: () {
                 Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const RegisterPage()));
               },
             ),
           )]
        
        ),
           
          
         )));
         
            
        
      
      

    //   backgroundColor: Colors.white,
    //   body: Center (
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //       TextFormField(
    //         autofocus: true,
    //         keyboardType: TextInputType.text,
    //         style: new TextStyle(color: Colors.black, fontSize: 20),
    //         decoration: InputDecoration(
    //           labelText: "Usuário",
    //           labelStyle: TextStyle(color: Colors.black,fontSize: 15)
    //         ),
    //       ),
          
    //       TextFormField(
    //         autofocus: true,
    //         obscureText: true,
    //         keyboardType: TextInputType.visiblePassword,
    //         style: new TextStyle(color: Colors.black, fontSize: 20),
    //         decoration: InputDecoration(
    //           labelText: "Senha",
    //           labelStyle: TextStyle(color: Colors.black,fontSize: 15)
    //         ),
    //       ),
    //       Divider(),
    //       ButtonTheme(
    //       height: 60.0,
    //       child: TextButton(
    //           style: TextButton.styleFrom(
    //               backgroundColor: Colors.green,
    //               fixedSize: Size(25, 15)
    //           ),
    //           child: Text(
    //             'Entrar',
    //             style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 15
    //             ),
    //           ),
    //           onPressed: () {},
    //         ),
            
    //       ),
    //       Divider(),
    //       ButtonTheme(
    //       height: 90.0,
    //       child: TextButton(
    //           child: Text(
    //             "Cadastrar-se",
    //             style: TextStyle(
    //             color: Colors.blueAccent,
    //             fontSize: 15
    //             ),
    //           ),
    //           onPressed: () {
    //             Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => const RegisterPage()));
    //           },
    //         ),
    //     )]),
    //     ),
    
  }
}