import 'package:flutter/material.dart';
import "cartPage.dart";

void main() {
  final List<bool> isremoved = [];
  runApp(MaterialApp(home: MyApp(isremoved: isremoved)));
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hello World",
      home: HomePage(),
    );
  }
}
*/
class MyApp extends StatefulWidget {
  List<bool> isremoved = [];
  MyApp({required this.isremoved});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> cart = [];
  int currentPage = 0;
  List<String> itemsNames = [
    'Lettuce',
    'Tomato',
    'Cucumber',
    'Milk',
    'Eggs',
    'Rice',
    'Sugar',
    'Bread',
    'Cheese'
  ];
  int _selectedIndex = 0;
  List<Widget> addCard(int index) {
    List<Widget> _Widgets = [];
    var x = itemsNames[index];
    var text = "";
    _Widgets.add(Image.asset('images/$x.jpg', width: 125, height: 200));
    _Widgets.add(Text(x));
    _Widgets.add(Container(
      width: 100,
      alignment: Alignment.centerRight,
      child: ElevatedButton(
          onPressed: () => {
                text = itemsNames[index],
                cart.add('$text'),
                cartBool[index] = true
              },
          child: const Text("add to cart")),
    ));
    return _Widgets;
  }

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CartPage(cart: cart, cartBool: cartBool),
        ),
      );
    });
  }

  List<bool> cartBool = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) => _onItemTapped(index, context)),
      /*bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'label'),
          NavigationDestination(
              icon: Icon(Icons.shopping_cart), label: 'Ahmed'),
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CartPage(cart: cart)),
              );
            },
          );
        },
        selectedIndex: currentPage,
      ),*/
      appBar: AppBar(title: const Text("Shopping Application")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(children: addCard(0)),
                  ),
                  Card(
                    child: Column(children: addCard(1)),
                  ),
                  Card(
                    child: Column(children: addCard(2)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Column(children: addCard(3)),
                ),
                Card(
                  child: Column(children: addCard(4)),
                ),
                Card(
                  child: Column(children: addCard(5)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(children: addCard(6)),
                  ),
                  Card(
                    child: Column(children: addCard(7)),
                  ),
                  Card(
                    child: Column(children: addCard(8)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
/*
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'label'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Ahmed'),
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              currentPage = index;
            },
          );
        },
        selectedIndex: currentPage,
      ),
      appBar: AppBar(title: const Text("Hello World")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/lettuce.jpg',
                            width: 125, height: 200),
                        const Text("Lettuce!"),
                        ElevatedButton(
                          child: const Text("Add To Cart!"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/