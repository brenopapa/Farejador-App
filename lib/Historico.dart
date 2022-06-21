import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/HistoricoDetalhe.dart';
import 'package:flutter_app/database.dart';

class Historico extends StatelessWidget {
  const Historico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/img1.png"),
                      opacity: 0.4,
                    ),
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: Stack(
                  fit: StackFit.loose,
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    const Positioned(
                        top: 0,
                        child: Text('\n\nSeu Histórico de Pesquisa!',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Courier',
                                fontSize: 20),
                            textAlign: TextAlign.center)),
                    SizedBox(
                      width: 700,
                      height: 450,
                      child: Stack(
                          fit: StackFit.loose,
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            ListView.builder(
                              itemCount: history.length,
                              itemBuilder: (context, index) {
                                return Card(
                                    child: ListTile(
                                  title: Text(history[index][1]),
                                  subtitle: Text(history[index][0]),
                                  /*trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Image(
                                          image:
                                              AssetImage("assets/img1.png"))),
                                  leading: const SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Text('A'),
                                  ),*/
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HistoricoDetalhe(
                                                    item: history[index][3],
                                                    id: history[index][4])));
                                  },
                                ));
                              },
                            )
                          ]),
                    ),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: SizedBox(
                            height: 25.0,
                            width: 60.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ))),
                  ],
                ),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(20.0),
              ),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              )))
        ],
      ),
    );
  }
}
