import 'package:flutter/material.dart';
import 'package:personally/home_page.dart';
import 'package:personally/market.dart';
import 'package:personally/shopping.dart';
import 'package:personally/support.dart';

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffe9f6eb),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text("T"),
            )
          ],
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          // backgroundColor: colorScheme.surface,
          selectedItemColor:  const Color(0xff228f63),
          // selectedItemColor:  Color(0xff22a872),
          // selectedItemColor:  Color(0xff228f63),
          // selectedItemColor:  Color(0xff26c485),
          // selectedItemColor:  Color(0xffe9f6eb),
          // unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
          // selectedLabelStyle: textTheme.caption,
          // unselectedLabelStyle: textTheme.caption,
          onTap: (value) {
            // Respond to item press.
            setState(() => index = value);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()),);
                    },
                  icon: const Icon(Icons.home, size: 40,)),
            ),
            BottomNavigationBarItem(
              label: 'Market',
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Market()),);
                  },
                  icon: const Icon(Icons.shopping_cart_outlined, size: 40,),)
            ),
            BottomNavigationBarItem(
              label: 'Support',
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Support()),);
                },
                icon: const Icon(Icons.support_agent, size: 40,),)
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Shopping()),);
                },
                icon: const Icon(Icons.shopping_bag, size: 40,),)
            ),
          ],
        )
    );
  }
}