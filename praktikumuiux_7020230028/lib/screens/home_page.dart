import 'package:flutter/material.dart';
import 'package:praktikumuiux_7020230028/models/product_model.dart';
import 'package:praktikumuiux_7020230028/widgets/product_card.dart';
import 'package:praktikumuiux_7020230028/screens/cart_screen.dart';
import 'package:praktikumuiux_7020230028/screens/profile_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ProductGridScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari produk impian...",
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      )
          : null, 

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Produk",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Keranjang",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Produk Terbaru", 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox (height: 15),
          Expanded(
            child: GridView.builder(
              itemCount: dummyProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2, // 2 Kolam
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.75, // Rasio Lebar tinggi kartu
              ),           // Jumlah item
              itemBuilder: (context, index) {
                return ProductCard(product: dummyProducts[index]);
              }
            ),
          ),  
        ],
      ),
    );
  }
}