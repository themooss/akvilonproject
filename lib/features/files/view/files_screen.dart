import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FilesScreen extends StatelessWidget {
  const FilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('FILES')));
  }
}
