import 'package:flutter/material.dart';

class Pagina11_NavigationBar extends StatefulWidget {
  const Pagina11_NavigationBar({super.key});

  @override
  State<Pagina11_NavigationBar> createState() => _Pagina11_NavigationBarState();
}

class _Pagina11_NavigationBarState extends State<Pagina11_NavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      currentIndex: _selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: "User",
        ),
      ]
    );
  }
}


class Pagina11_PaginaHome extends StatelessWidget {
  const Pagina11_PaginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text("Home", style: TextStyle(fontSize: 34)),
    );
  }
}


class Pagina11_PaginaUser extends StatelessWidget {
  const Pagina11_PaginaUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text("User", style: TextStyle(fontSize: 34)),
    );
  }
}