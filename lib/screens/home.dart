import 'package:acefood/screens/profile.dart';
import 'package:acefood/widgets/disease_button.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

  static const routeName = '/';
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
                height: MediaQuery.of(context).size.height * 0.75,
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    centerTitle: true,
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
                          height: 380,
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
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  void _showResultModal(BuildContext bct) {
    showModalBottomSheet(
        context: bct,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
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
                padding: const EdgeInsets.only(
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
                          children: const [
                            Text(
                              'Disease Type',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Early Blight')
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Confidence Level',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('65%')
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Algorithm',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('CNN')
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.red[800],
                          minWidth: 300,
                          height: 50,
                          elevation: 1,
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
                        minRadius: 48,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  MaterialButton(
                    onPressed: () {
                      _showResultModal(context);
                    },
                    minWidth: double.infinity,
                    height: 70,
                    color: Colors.red[800],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 18,
                              child: Icon(Icons.camera_alt_rounded),
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
                            borderRadius: BorderRadius.circular(12)),
                        child: const Text(
                          'Explore Types of Diseases',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Recent Scans',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 20),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            DiseaseButton('Late Blight', '75%'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if (index == 0) {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          } else {
            Navigator.of(context)
                .pushReplacementNamed(ProfileHomeScreen.routeName);
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
