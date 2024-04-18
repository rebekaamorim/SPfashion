import 'dart:ui';

import 'package:aplicacao_spfashion/widgets/input_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          //Stack : colocar widget em cima do outro
          child: Stack(
            children: [
              loginform(context)
            ],
          )
        ),
      ),
    );
  }

  SingleChildScrollView loginform(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
              children: [
                //SizedBox: altura que o widget fica
                //const em tudo que for construtor
                const SizedBox( height: 250),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  width:double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black12,
                        blurRadius: 15,
                        offset:Offset(0,5),
                      )
                    ] ),
                child: Column(
                  children: [
                    const SizedBox(height:10,),
                    Text('Login', 
                          style: Theme.of(context).textTheme.headline4
                    ),
                    const SizedBox(height:30),
                    Container(
                      child: Form(child: Column(
                        children: [
                          TextFormField(
                            autocorrect: false,
                            //aqui é chamado a classe InputDecorations, utilizando seu método para receber os valores e tornar o código mais limpo
                            //A classe InputDecorations está presente no endereço 'lib/widgets/inputdecoration.dart'
                            decoration: InputDecorations.inputDecoration(hinttext: 'user123', labeltext: 'Nome usuário', icone: const Icon(Icons.person_2_sharp),)
                          ),
                          const SizedBox(height:30),
                          TextFormField(
                            autocorrect: false,
                            decoration: InputDecorations.inputDecoration(hinttext: '********', labeltext: 'Senha', icone: Icon(Icons.lock_outline))),
                        ],
                      ),),
                    )
                  
                    ],
                  ),),
                const SizedBox(height:50),
                const Text('Não tenho uma conta!', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),)
              ],
    ),);
  }
}