import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
            autofocus: true,
             keyboardType: TextInputType.text,
             style: new TextStyle(color: Colors.black, fontSize: 20),
             decoration: InputDecoration(
               labelText: "Usuário",
               labelStyle: TextStyle(color: Colors.black,fontSize: 15)
             ),
        ),
        TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.black, fontSize: 20),
            decoration: InputDecoration(
               labelText: "Senha",
               labelStyle: TextStyle(color: Colors.black,fontSize: 15)
             ),
             
           ),
           TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.black, fontSize: 20),
            decoration: InputDecoration(
               labelText: "Confirmar Senha",
               labelStyle: TextStyle(color: Colors.black,fontSize: 15)
             ),
             
           ),
            Divider(),
           ButtonTheme(
           height: 60.0,
           child: TextButton(
               style: TextButton.styleFrom(
                   backgroundColor: Colors.green,
               ),
               child: Text(
                 'Confirmar',
                 style: TextStyle(
                 color: Colors.white,
                 fontSize: 15
                 ),
              ),
               onPressed: () {},
             ),
            
           ),
         Divider(),
           ButtonTheme(
           height: 90.0,
           child: TextButton(
               child: Text(
                 "Voltar",
                 style: TextStyle(
                 color: Colors.blueAccent,
                 fontSize: 15
                 ),
               ),
               onPressed: () {
                 Navigator.pop(context);
               },
             ),
           )]
        
        ),
           
          
         )));
  }
}