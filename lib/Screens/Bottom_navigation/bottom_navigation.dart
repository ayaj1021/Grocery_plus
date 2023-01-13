import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Category_screen/category_screen.dart';
import 'package:grocery_plus_app_ui/Screens/Home_screen/home_screen.dart';
import 'package:grocery_plus_app_ui/Screens/More_nav_screen/more_nav_screen.dart';
import 'package:grocery_plus_app_ui/Screens/My_bag_screen/my_bag_screen.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Styles/bottom_nav_styles.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const MyBag(),
    const MoreNavScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          elevation: 100,
          selectedItemColor: Styles.primaryColor,
          unselectedItemColor: Colors.grey.shade400,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                BottomNav.bottomNavItemIcon[0],
              ),
              label: BottomNav.bottomNavItemText[0],
            ),
            BottomNavigationBarItem(
              icon: Icon(
                BottomNav.bottomNavItemIcon[1],
              ),
              label: BottomNav.bottomNavItemText[1],
            ),
            BottomNavigationBarItem(
              icon: Icon(
                BottomNav.bottomNavItemIcon[2],
              ),
              label: BottomNav.bottomNavItemText[2],
            ),
            BottomNavigationBarItem(
              icon: Icon(
                BottomNav.bottomNavItemIcon[3],
              ),
              label: BottomNav.bottomNavItemText[3],
            ),
          ]),
    );
  }
}








// import 'package:flutter/material.dart';

// import 'package:grocery_plus_app_ui/Screens/Home_screen/home_screen.dart';
// import 'package:grocery_plus_app_ui/Styles/bottom_nav_styles.dart';

// class BottomNavigationBar extends StatefulWidget {
//   const BottomNavigationBar({super.key});

//   @override
//   State<BottomNavigationBar> createState() => _BottomNavigationBarState();
// }

// class _BottomNavigationBarState extends State<BottomNavigationBar> {
//   int _selectedIndex = 0;
//   //int _indexClicked = 0;

//   static final List <Widget> _widgetOptions = <Widget> [
//     const HomeScreen(),
//     const Text('Category'),
//     const Text('Shopping Bag'),
//     const Text('Side Navigation'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: _widgetOptions [_selectedIndex],
//         ) ,
        
//       bottomNavigationBar: const BottomNavigationBar(),
//     );
//   }
// }


// //   bottomNavigationBar: BottomNavigationBar(
          
//       //   backgroundColor: Colors.grey.shade100,
//       //   type: BottomNavigationBarType.fixed,
//       //   elevation: 10,
//       //   selectedItemColor: BottomNav.selectedItemColor,
//       //   unselectedItemColor: BottomNav.bottomNavItemColor,
//       //   currentIndex: indexClicked,
//       //   onTap: _onItemTapped,
//       //   items: [
//       //     BottomNavigationBarItem(
//       //       icon: Icon(
//       //         BottomNav.bottomNavItemIcon[0],
//       //       ),
//       //       label: BottomNav.bottomNavItemText[0],
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(
//       //         BottomNav.bottomNavItemIcon[1],
//       //       ),
//       //       label: BottomNav.bottomNavItemText[1],
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(
//       //         BottomNav.bottomNavItemIcon[2],
//       //       ),
//       //       label: BottomNav.bottomNavItemText[2],
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(
//       //         BottomNav.bottomNavItemIcon[3],
//       //       ),
//       //       label: BottomNav.bottomNavItemText[3],
//       //     ),
//       //   ],
//       // ),