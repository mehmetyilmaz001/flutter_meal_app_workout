import 'package:flutter/material.dart';
import './favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  TabsScreen_State createState() => TabsScreen_State();
}

class TabsScreen_State extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CategoriesScreen(),
          FavoritesScreen()
        ],),
      ),
    );
  }
}
