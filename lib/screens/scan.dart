import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class DiseaseScan extends StatefulWidget {
  const DiseaseScan({Key? key}) : super(key: key);

  @override
  State<DiseaseScan> createState() => _DiseaseScanState();
}

class _DiseaseScanState extends State<DiseaseScan> {
  void _showResultModal(BuildContext bct) {
    showModalBottomSheet(
        context: bct,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: const Text(
                  'Detection Results',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                leading: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              body: SizedBox(
                  child: Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 24.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Disease Type',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Early Blight')
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Confidence Level',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('65%')
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Algorithm',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('CNN')
                          ],
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.red[800],
                          minWidth: 300,
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          child: const Text(
                            'Scan Again',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: MaterialButton(
                    onPressed: () {
                      _showResultModal(context);
                    },
                    color: Colors.red[800],
                    minWidth: 300,
                    height: 50,
                    child: const Text(
                      'Detect',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ));
  }
}
