import 'package:flutter/material.dart';

class DiseaseModal extends StatelessWidget {
  const DiseaseModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Image.asset('assets/images/AcefoodLogo.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tomato Disease Classes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            const Text(
              'Types of tomato diseases that can be detected with this app',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 550,
              child: ListView(
                  shrinkWrap: false,
                  children: ListTile.divideTiles(
                      context: context,
                      color: Colors.grey[200],
                      tiles: [
                        const ListTile(
                          title: Text('Mosaic Virus'),
                        ),
                        const ListTile(
                          title: Text('Early Blight'),
                        ),
                        const ListTile(
                          title: Text('Septoria Leaf Spot'),
                        ),
                        const ListTile(
                          title: Text('Bacterial Spot'),
                        ),
                        const ListTile(
                          title: Text('Target Spot'),
                        ),
                        const ListTile(
                          title: Text('Spider Mites'),
                        ),
                        const ListTile(
                          title: Text('Yellow Leaf Curl Virus'),
                        ),
                        const ListTile(
                          title: Text('Leaf Mold'),
                        ),
                      ]).toList()),
            ),
            const TextButton(
                onPressed: null,
                child: Text(
                  'Close',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ))
          ],
        ),
      ),
    );
  }
}
