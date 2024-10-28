import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeck1/main.dart';

void main() {
  testWidgets('Menampilkan lokasi, suhu, dan kondisi cuaca', (WidgetTester tester) async {
    // Membuat aplikasi dan memicu tampilan frame.
    await tester.pumpWidget(MyApp());

    // Verifikasi apakah lokasi ditampilkan.
    expect(find.text('Harlem'), findsOneWidget);

    // Verifikasi apakah suhu saat ini ditampilkan.
    expect(find.text('26°C'), findsOneWidget);

    // Verifikasi apakah kondisi cuaca ditampilkan.
    expect(find.text('Berawan'), findsOneWidget);

    // Verifikasi apakah rentang suhu minimum dan maksimum ditampilkan.
    expect(find.text('24°C / 35°C'), findsOneWidget);
  });
}
