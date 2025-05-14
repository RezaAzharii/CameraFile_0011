import 'package:camera/camera.dart';
import 'package:camera_sensor/bloc/camera_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<CameraBloc>();
    if (bloc.state is! CameraReady) {
      bloc.add(InitializeCamera());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
