import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amajon',
        theme: ThemeData(),
        home: const ECommerceScreen(),
        debugShowCheckedModeBanner: false);
  }
}

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar Amajon didalam Scaffold
      appBar: AppBar(
        title: const Text(
          'Amajon',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
        ),
        // Menambahkan Properti Center Title
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Banner Promo
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Color(0xFFD4F6FF),
                    borderRadius: BorderRadius.circular(8.0),
                    // Box Shadow Banner Promo
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.4),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                child: Column(
                  children: [
                    const Text(
                      'PROMO SPESIAL HARI INI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),

                    const SizedBox(height: 20.0),

                    // Row tambahan untuk informasi promo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.discount,
                              color: Colors.red,
                              size: 24.0,
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              'Diskon 50%',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.local_shipping,
                              color: Colors.green,
                              size: 24.0,
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              'Gratis Ongkir',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Produk 1
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                //Padding container asimetris
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 18.0,
                  right: 22.0,
                  bottom: 14.0,
                ),
                decoration: BoxDecoration(
                    color: Color(0xFFFBFBFB),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey.shade400),
                    //Box Shadow Produk 1
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Sepatu Running',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //Ikon bintang dan rating produk 1
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Text("(5)"),
                      ],
                    ),
                    const SizedBox(height: 2.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rp 750.000',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                          ),
                        ),
                        Container(
                          // Mengubah teks beli menjadi elevated Button
                          padding: const EdgeInsets.only(
                            left: 24.0,
                            top: 12.0,
                            right: 14.0,
                          ),
                          child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)),
                                //Padding pada tombol beli
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0)),
                            child: Text("Beli"),
                          ),
                        ),
                      ],
                    ),
                    // Row tambahan untuk ikon estimasi pengiriman produk 1
                    Row(
                      children: [
                        Icon(Icons.local_shipping_outlined,
                            color: Colors.blueGrey.withOpacity(0.5)),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Text('3-4 Hari Pengiriman',
                            style: TextStyle(
                                color: Color.fromRGBO(120, 144, 156, 0.6))),
                      ],
                    ),
                  ],
                ),
              ),

              // Produk 2
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 18.0,
                  right: 22.0,
                  bottom: 14.0,
                ),
                decoration: BoxDecoration(
                    //Mengubah latar belakang produk kedua
                    color: Colors.blue.shade50,
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8.0),
                    //Box Shadow Produk 2
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Tas Ransel',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Ikon bintang dan rating produk 2
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 16.0),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.star, color: Colors.amber, size: 16.0),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.star, color: Colors.amber, size: 16.0),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.star, color: Colors.amber, size: 16.0),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.star_border,
                            color: Colors.grey, size: 16.0),
                        const SizedBox(width: 8.0),
                        const Text('(4)'),
                      ],
                    ),
                    const SizedBox(height: 2.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rp 350.000',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                          ),
                        ),
                        Container(
                          // Mengubah teks beli menjadi elevated Button
                          padding: const EdgeInsets.only(
                            left: 24.0,
                            top: 12.0,
                            right: 14.0,
                          ),
                          child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)),
                                //Padding pada tombol beli
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0)),
                            child: Text("Beli"),
                          ),
                        ),
                      ],
                    ),
                    //Row tambahan yang berisi ikon pengiriman dan estimasi Produk 2
                    Row(
                      children: [
                        Icon(Icons.local_shipping_outlined,
                            color: Colors.blueGrey.withOpacity(0.5)),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Text('3-4 Hari Pengiriman',
                            style: TextStyle(
                                color: Color.fromRGBO(120, 144, 156, 0.6))),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 3.0),
              //Kontainer Footer Promo
              Container(
                padding: EdgeInsets.all(42.0),
                color: Colors.grey.shade100,
                child: const Center(
                  child: Text(
                    "Syarat dan ketentuan berlaku.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
              ),

              // Kategori
              const SizedBox(height: 14.0),
              //Nested Layout
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Nested Layout kategori 1
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: const <Widget>[
                          Icon(Icons.shopping_bag, color: Colors.blue),
                          SizedBox(height: 8.0),
                          Text('Pakaian'),
                        ],
                      ),
                    ),
                    //Nested Layout kategori 1
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: const <Widget>[
                          Icon(Icons.watch, color: Colors.blue),
                          SizedBox(height: 8.0),
                          Text('Aksesoris')
                        ],
                      ),
                    ),
                    //Nested Layout kategori 3
                    Flexible(
                        flex: 1,
                        child: Column(
                          children: const <Widget>[
                            Icon(Icons.devices, color: Colors.blue),
                            SizedBox(height: 8.0),
                            Text('Elektronik'),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Floating Action Button Keranjang Belanja
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          color: Color(0xFF143D60),
        ),
        backgroundColor: Color(0xFFA0C878),
        hoverColor: Colors.blueGrey,
        tooltip: "Keranjang Belanjamu",
      ),

      // Menambahkan bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Beranda",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun")
      ]),
    );
  }
}
