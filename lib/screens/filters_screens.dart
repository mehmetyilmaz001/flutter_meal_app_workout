import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = 'filters-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters'),),
          body: Container(
        child: Text('Filters'),
      ),
    );
  }
}