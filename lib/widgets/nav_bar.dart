import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatefulWidget {
  NavBar({required this.child, Key? key}) : super(key: key);
  Widget child;
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NavigationRail(
            destinations: const [
              NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  icon: Icon(Icons.home),
                  label: Text("Home")),
              NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  icon: Icon(Icons.airplay),
                  label: Text("Options Chain")),
              NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  icon: Icon(Icons.book),
                  label: Text("Screeners")),
            ],
            selectedIndex: 0,
            onDestinationSelected: (value) => NavHelpers._onNavIconTapped(value, context),
          ),
          Expanded(child: widget.child)
        ],
      ),
    );
  }
}

class NavHelpers {
  static void _onNavIconTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        {
          context.go('/');
          break;
        }
      case 1:
        {
          context.go('/options');
          break;
        }
      case 2:
        {
          context.go('/screeners');
          break;
        }
      default:
        {
          context.go('/');
        }
    }
  }
}
