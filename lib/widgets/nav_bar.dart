import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_main/routes/global_vars.dart';


class NavBar extends StatefulWidget {
  NavBar({required this.child, Key? key}) : super(key: key);
  Widget child;
  @override
  _NavBarState createState() => _NavBarState();
  
}

class _NavBarState extends State<NavBar> {
  //  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ValueListenableBuilder(
            valueListenable: Helpers.selectedIndex,
            builder: (context, value, child) {
           return NavigationRail(
            backgroundColor: Colors.white30,
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
              selectedIndex: Helpers.selectedIndex.value,
              onDestinationSelected: (value) =>{
                Helpers.selectedIndex.value = value,
                 NavHelpers._onNavIconTapped(value, context)},
            );
            },
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
