import 'package:flutter/material.dart';

class Registercliente {
  String? email;
  String? nome;
  String? senha;

  Registercliente({this.email, this.nome, this.senha});

  Registercliente.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    nome = json['nome'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['nome'] = this.nome;
    data['senha'] = this.senha;
    return data;
  }
}

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
           TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.black, fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
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