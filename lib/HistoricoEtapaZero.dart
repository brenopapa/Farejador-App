import 'package:flutter/material.dart';

class HistoricoEtapaZero extends StatelessWidget {
  const HistoricoEtapaZero({Key? key}) : super(key: key);

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
                                            'Você ainda não possui um histórico de pesquisas! :(',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Courier',
                                                fontSize: 20),
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
