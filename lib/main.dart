import 'dart:ui';

import 'package:aplicacao_spfashion/eventos.dart';
import 'package:aplicacao_spfashion/widgets/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        //fundo da tela login
        body: Container(
          height: double.infinity,
          //adicionando fundo
          decoration: const BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assets/imgs/fungo_colorido.png'),
              fit:BoxFit.cover,
          )
          ),
          
          //Stack : colocar widget em cima do outro
          child: Stack(
            //nessa children é chamado os métodos dos widgets
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
                  height: 450,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(143, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      )
                    ] ),
                // aqui tem o conteúdo dentro do container de fundo
                child: Column(
                  children: [
                    //posição de cada entrada de texto
                    const SizedBox(height:10,),
                    //titulo login
                    const Text('Login', 
                          style: TextStyle(
                            fontFamily: 'Chloe',
                            fontSize: 40,
                            color: Colors.deepOrange
                          ),
                    ),
                    const SizedBox(height:40),
                    //container que tem todas as informações e botão
                    Container(
                      child: Form(child: Column(
                        children: [
                          //aqui são os texts que vão receber dados
                          TextFormField(
                            autocorrect: false,
                            //aqui é chamado a classe InputDecorations, utilizando seu método para receber os valores e tornar o código mais limpo
                            //A classe InputDecorations está presente no endereço 'lib/widgets/inputdecoration.dart'
                            decoration: InputDecorations.inputDecoration(hinttext: 'user123', labeltext: 'Nome usuário', icone: const Icon(Icons.person_2_sharp, color: Colors.deepPurple,), )
                          ),
                          const SizedBox(height:30),
                          TextFormField(
                            autocorrect: false,
                            obscureText: true,
                            decoration: InputDecorations.inputDecoration(hinttext: '********', labeltext: 'Senha', icone:const Icon(Icons.lock_outline, color: Colors.deepPurple))),
                          const SizedBox(height:30),
                          //nao tenho conta, Row alinha ela para o fim (esquerda) do container
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end, 
                            children: [Text('Não tenho uma conta!', 
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 15, 
                              fontWeight: FontWeight.bold),),],),
                        
                          const SizedBox(height:30),
                          MaterialButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            //quando o botão tiver desabilitado(caso não for preenchida aas informações)
                            disabledColor: Colors.grey,
                            //quando tiver habilitado
                            color:Colors.deepOrange,
                            //Estilizando o nome do botão, por isso colocar o container
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 80,
                                vertical: 10),
                              child: const Text(
                                'Entrar', 
                                style: TextStyle(
                                  color: Colors.white,
                                   fontSize: 20,))),
                            onPressed: () {} ,

                            
                          )
                        ],
                      ),),
                    )
                  
                    ],
                  ),),
                
              ],
    ),);
  }
}

 