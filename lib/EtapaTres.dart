import 'dart:io';

import 'package:flutter/material.dart';
import 'database.dart';

class EtapaTres extends StatelessWidget {
  final List item;
  final String id;
  const EtapaTres({Key? key, required this.item, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    history.add([name[int.parse(id)], item[0], item[1], item, id]);

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
                    Wrap(
                        alignment: WrapAlignment.center,
                        direction: Axis.horizontal,
                        spacing: 800,
                        children: <Widget>[
                          FittedBox(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              child: Text(
                                  '\nProduto Selecionado:\n' +
                                      item[0] +
                                      '\n \n \nLocalização:\n' +
                                      item[1],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Courier',
                                      fontSize: 25),
                                  textAlign: TextAlign.center)),
                          FittedBox(
                              child: Image(
                            image: AssetImage(item[2]),
                            height: 500.0,
                            width: 400.0,
                          ))
                        ]),
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
