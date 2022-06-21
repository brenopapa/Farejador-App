import 'package:flutter/material.dart';
import 'package:flutter_app/EtapaDois.dart';
import 'package:flutter_app/EtapaZero.dart';
import 'package:flutter_app/InfoApp.dart';
import 'package:flutter_app/Historico.dart';
import 'package:flutter_app/MarketDataModel.dart';
import 'package:flutter_app/database.dart';

import 'HistoricoEtapaZero.dart';

class EtapaUm extends StatefulWidget {
  const EtapaUm({Key? key}) : super(key: key);

  @override
  _EtapaUmState createState() => _EtapaUmState();
}

class _EtapaUmState extends State<EtapaUm> {
  TextEditingController emailController = TextEditingController();

  final List<MarketDataModel> MyData = List.generate(
      name.length,
      (index) =>
          MarketDataModel(id[index], '${name[index]}', '${address[index]}'));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/img1.png"),
          ),
          color: Colors.white,
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          const Positioned(
              top: 10,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Bem vindo ao\nFarejador!',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Courier',
                          fontSize: 35),
                      textAlign: TextAlign.center))),
          SizedBox(
            width: 150,
            height: 150,
            child: Stack(
                fit: StackFit.loose,
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    obscureText: false,
                    style: const TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        labelText: "Insira o código!",
                        hintText: "1234",
                        hoverColor: Colors.blue,
                        focusColor: Colors.blue,
                        fillColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(),
                        )),
                  ),
                  Positioned(
                      bottom: 0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          if (MyData.length <=
                              int.parse(emailController.text)) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EtapaZero()),
                            );
                          } else {
                            MyData[int.parse(emailController.text)];
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EtapaDois(
                                        MyData: MyData[
                                            int.parse(emailController.text)],
                                      )),
                            );
                          }
                        },
                        child: const Text('Vai!',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Courier'),
                            textAlign: TextAlign.center),
                      ))
                ]),
          ),
          Positioned(
              bottom: 0,
              child: SizedBox(
                  height: 25.0,
                  width: 150.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue)),
                    onPressed: () {
                      if (history.isEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HistoricoEtapaZero()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Historico()),
                        );
                      }
                    },
                    child: const Text('Seu Histórico',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Courier'),
                        textAlign: TextAlign.center),
                  ))),
          const Positioned(
              bottom: 50,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Primeira etapa:\nDigite o código do Farejador!',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Courier',
                          fontSize: 20),
                      textAlign: TextAlign.center))),
          Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromRGBO(222, 142, 104, 0.7),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfoApp()),
                      );
                    },
                    child: const Icon(
                      Icons.info_outline,
                      color: Colors.black,
                    ),
                  ))),
        ],
      ),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(20.0),
    );
  }
}
