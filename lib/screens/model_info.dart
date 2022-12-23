import 'package:flutter/material.dart';

class ModelInfo extends StatelessWidget {
  const ModelInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Model Info',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/profile');
            },
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Model Type',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'Tensorflow Lite',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Model Size',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        '4mb',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Algorithm Type',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'CNN',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Image Size',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        '224x224',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Accuracy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        '73%',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 72),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          'built by',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'AjibsBaba',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
