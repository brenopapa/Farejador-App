import 'package:flutter/material.dart';
import 'package:flutter_app/EtapaTres.dart';
import 'package:flutter_app/MarketDataModel.dart';
import 'package:flutter_app/database.dart';

int count = 0;

class EtapaDois extends StatelessWidget {
  final MarketDataModel MyData;
  const EtapaDois({Key? key, required this.MyData}) : super(key: key);
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
                    Positioned(
                        top: 0,
                        child: Text(
                            '\n\n' + MyData.name + '\n' + MyData.address,
                            style: const TextStyle(
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
                              itemCount: items[MyData.id].length,
                              itemBuilder: (context, index) {
                                return Card(
                                    child: ListTile(
                                  title: Text(items[MyData.id][index][0]),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EtapaTres(
                                                item: items[MyData.id][index],
                                                id: MyData.id)));
                                  },
                                ));
                              },
                            )
                          ]),
                    ),
                    const Positioned(
                        bottom: 0,
                        child: Text('Segunda etapa:\nEscolha seu produto!',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Courier',
                                fontSize: 20),
                            textAlign: TextAlign.center)),
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
