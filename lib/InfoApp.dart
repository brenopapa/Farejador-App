import 'package:flutter/material.dart';

class InfoApp extends StatelessWidget {
  const InfoApp({Key? key}) : super(key: key);

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
                    SizedBox(
                      width: 700,
                      height: 500,
                      child: Stack(
                          fit: StackFit.loose,
                          alignment: AlignmentDirectional.center,
                          children: const <Widget>[
                            Positioned.fill(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                            'Informações do App: \n \n \n Desenvolvedor: \n Breno Papa \n https://github.com/brenopapa \n \n \n  Idealizadora: \n Alana Rodrigues  \n \n \n  v1.0.0',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Courier',
                                                fontSize: 25),
                                            textAlign: TextAlign.center)))),
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
