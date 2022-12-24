import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  void _showDiseaseModal(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        isScrollControlled: true,
        builder: (_) {
          return GestureDetector(
              onTap: () {},
              behavior: HitTestBehavior.opaque,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.85,
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: Image.asset('assets/images/AcefoodLogo.png'),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Tomato Disease Classes',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w900),
                        ),
                        const Text(
                          'Types of tomato diseases that can be detected with this app',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
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
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Close',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ))
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  Future _checkCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      PermissionStatus permissionStatus = await Permission.camera.request();
      Navigator.of(context).pushReplacementNamed('/scan');
    }
    if (!status.isDenied) {
      print('Camera permission is denied');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('assets/images/Acefood.png'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Hello',
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Samuel',
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'samuelajibade22@gmail.com',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.red,
                        minRadius: 48,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  MaterialButton(
                    onPressed: () {
                      _checkCameraPermission();
                    },
                    minWidth: double.infinity,
                    height: 70,
                    color: Colors.red[800],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Start a disease scan',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Save your plants today!',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          _showDiseaseModal(context);
                        },
                        minWidth: double.infinity,
                        height: 200,
                        color: Colors.white,
                        textColor: Colors.black,
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          'Explore Types of Diseases',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Recent Scans',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        minWidth: double.infinity,
                        height: 70,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Tomato',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'Late blight',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const <Widget>[
                                  Text(
                                    '73%',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Text(
                                    'Late blight',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if (index == 0) {
            Navigator.of(context).pushReplacementNamed('/');
          } else {
            Navigator.of(context).pushReplacementNamed('/profile');
          }
        },
        selectedIndex: 0,
        backgroundColor: Colors.red[50],
        surfaceTintColor: Colors.red,
        destinations: const <NavigationDestination>[
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_filled),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              selectedIcon: Icon(
                Icons.person_2,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
