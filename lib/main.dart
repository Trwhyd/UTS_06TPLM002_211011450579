import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(AplikasiCuaca());
}

class AplikasiCuaca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayarCuaca(),
      ),
    );
  }
}

class LayarCuaca extends StatelessWidget {
  final String lokasi = "Harlem";
  final int suhuSekarang = 15; // Sesuaikan suhu sesuai kebutuhan
  final int suhuMin = 25; // Sesuaikan suhu sesuai kebutuhan
  final int suhuMax = 28; // Sesuaikan suhu sesuai kebutuhan
  final String kondisiCuaca = "Cloudy";

  String getTanggalSaatIni() {
    initializeDateFormatting('en', null); // Inisialisasi format tanggal bahasa Inggris
    return DateFormat('EEEE, MMMM d, yyyy', 'en').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade800,
            Colors.blue.shade300,
          ],
        ),
        image: DecorationImage(
          image: AssetImage("assets/forest.png"), // Gambar background forest
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              lokasi,
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              getTanggalSaatIni(),
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "$suhuSekarang°C",
              style: TextStyle(
                fontSize: 80,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.white54,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            SizedBox(height: 8),
            Text(
              kondisiCuaca,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "$suhuMin°C / $suhuMax°C",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
