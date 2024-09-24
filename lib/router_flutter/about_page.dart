import 'package:flutter/material.dart';
import 'package:pertemuan3/router_flutter/side_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      drawer: const Sidemenu(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Header Gambar
          Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('logo.png'), // Ubah gambar sesuai dengan tema jual beli
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 20),
          // Judul Aplikasi
          const Text(
            'JASON STORE',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          // Deskripsi Aplikasi
          const Text(
            'Aplikasi ini memudahkan kamu untuk menjual dan membeli barang secara online dengan aman, cepat, dan nyaman.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // Fitur Aplikasi
          const Text(
            'Fitur Utama:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          // List Fitur
          const ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.green),
            title: Text('Jual produk dengan mudah'),
          ),
          const ListTile(
            leading: Icon(Icons.search, color: Colors.blue),
            title: Text('Cari barang yang kamu butuhkan'),
          ),
          const ListTile(
            leading: Icon(Icons.payment, color: Colors.orange),
            title: Text('Metode pembayaran yang aman dan fleksibel'),
          ),
          const ListTile(
            leading: Icon(Icons.local_shipping, color: Colors.red),
            title: Text('Pengiriman cepat dan aman'),
          ),
          const SizedBox(height: 20),
          // Footer
          const Text(
            'Terima kasih telah menggunakan aplikasi jual beli kami. Kami berharap pengalaman belanja kamu menyenangkan!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
