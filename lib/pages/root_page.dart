import 'package:flutter/material.dart';
import 'package:nested_navigators/nested_nav_item.dart';
import 'package:nested_navigators/nested_navigators.dart';
import 'package:picky/nested_nav_item_key.dart';
import 'package:picky/routes.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return NestedNavigators(
      items: {
        NestedNavItemKey.blue: NestedNavigatorItem(
          initialRoute: Routes.blue,
          icon: Icons.access_time,
          text: "Blue",
        ),
        NestedNavItemKey.red: NestedNavigatorItem(
          initialRoute: Routes.red,
          icon: Icons.send,
          text: "Red",
        ),
        NestedNavItemKey.green: NestedNavigatorItem(
          initialRoute: Routes.green,
          icon: Icons.send,
          text: "Green",
        ),
        NestedNavItemKey.login: NestedNavigatorItem(
          initialRoute: Routes.login,
          icon: Icons.perm_identity,
          text: "Login",
        ),
        NestedNavItemKey.create: NestedNavigatorItem(
          initialRoute: Routes.create,
          icon: Icons.perm_identity,
          text: "Create",
        ),
        NestedNavItemKey.account: NestedNavigatorItem(
          initialRoute: Routes.account,
          icon: Icons.perm_identity,
          text: "Account",
        ),
        NestedNavItemKey.list: NestedNavigatorItem(
          initialRoute: Routes.list,
          icon: Icons.perm_identity,
          text: "List",
        ),
        NestedNavItemKey.history: NestedNavigatorItem(
          initialRoute: Routes.history,
          icon: Icons.perm_identity,
          text: "History",
        ),
      },
      generateRoute: Routes.generateRoute,
      drawer: (items, selectedItemKey, selectNavigator) => Drawer(
            child: ListView(
              children:
                  _buildDrawersItems(items, selectedItemKey, selectNavigator),
            ),
          ),
      endDrawer: (items, selectedItemKey, selectNavigator) => Drawer(
            child: ListView(
              children:
                  _buildDrawersItems(items, selectedItemKey, selectNavigator),
            ),
          ),
      buildBottomNavigationItem: (key, item, selected) =>
          BottomNavigationBarItem(
            icon: Icon(
              item.icon,
              color: Colors.blue,
            ),
            title: Text(
              item.text,
              style: TextStyle(fontSize: 20),
            ),
          ),
      bottomNavigationBarTheme: Theme.of(context).copyWith(
        splashColor: Colors.blue[100],
      ),
    );
  }

  List<ListTile> _buildDrawersItems(
    Map<NestedNavItemKey, NestedNavigatorItem> items,
    NestedNavItemKey selectedItemKey,
    Function(NestedNavItemKey) selectNavigator,
  ) {
    return items.entries
        .map((entry) => ListTile(
              title: Text(
                entry.value.text,
                style: TextStyle(
                  color: entry.key == selectedItemKey ? Colors.blue : null,
                ),
              ),
              trailing: Icon(
                entry.value.icon,
                color: entry.key == selectedItemKey ? Colors.blue : null,
              ),
              onTap: () => selectNavigator(entry.key),
            ))
        .toList();
  }
}
