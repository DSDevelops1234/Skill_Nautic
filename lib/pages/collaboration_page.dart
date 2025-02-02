import 'package:flutter/material.dart';
import 'package:edu_connect_app/widgets/drawer_navigation.dart';

class CollaborationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collaboration'),
      ),
      drawer: DrawerNavigation(), // Add DrawerNavigation
      body: Center(
        child: Text('Collaboration Tools'),
      ),
    );
  }
}
