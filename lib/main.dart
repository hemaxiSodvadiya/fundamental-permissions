import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Permission",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await openAppSettings();
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          children: [
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.camera.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.camera_alt),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.phone.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.phone),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.sms.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.sms),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.bluetooth.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.bluetooth),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.storage.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.storage),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.location.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.location_on),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.photos.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.photo),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.reminders.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  switch (res) {
                    case PermissionStatus.granted:
                      print("Granted");
                      break;
                    case PermissionStatus.denied:
                      print("Denied");
                      break;
                    case PermissionStatus.permanentlyDenied:
                      print("Permanently Denied");
                      break;
                  }
                },
                child: const Icon(Icons.alarm),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
