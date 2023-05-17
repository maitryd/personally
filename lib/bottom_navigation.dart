import 'package:flutter/material.dart';
import 'package:personally/Images.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          // backgroundColor: colorScheme.surface,
          selectedItemColor:  Color(0xff228f63),
          // unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
          // selectedLabelStyle: textTheme.caption,
          // unselectedLabelStyle: textTheme.caption,
          onTap: (value) {
            // Respond to item press.
            setState(() => index = value);
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Market',
              icon: Icon(Icons.shopping_cart_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Support',
              icon: Icon(Icons.support_agent),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Icon(Icons.shopping_bag),
            ),
          ],
        )
    );
  }
}