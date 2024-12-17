import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:take_aphoto/screens/camera_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Images ",
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
            onPressed: ()async {
              final List<CameraDescription>cameras;
              cameras = await availableCameras();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraScreen(cameras: cameras,),
                  ));
            },
            child: Icon(Icons.camera_alt_sharp,size: 75,color: Colors.black,)),
      ),
    );
  }
}
