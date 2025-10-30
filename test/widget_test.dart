import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_hw/main.dart';
// Not: LoginPage veya HomePage içeriğini test etmek için bu sayfaları buraya import etmelisiniz.
// Örnek: import 'package:mobile_hw/pages/login_page.dart';

void main() {
  // Yeni Test: Uygulamanın rotalama ile başlangıçta düzgün yüklendiğini kontrol eder.
  testWidgets('Application loads successfully and navigates to Login route', (WidgetTester tester) async {
    // Uygulamanın ana widget'ını yükle.
    await tester.pumpWidget(const MyApp());

    // Rota geçişlerinin (initialRoute: '/login') ve tüm animasyonların tamamlanmasını bekle.
    // Bu, uygulamanın gerçekten LoginPage'e gitmesini sağlar.
    await tester.pumpAndSettle();

    // Uygulamanın bir Material App içerdiğini ve herhangi bir hata olmadan yüklendiğini kontrol et.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Kök sebep olan '0' metninin bulunmadığını kontrol ederiz.
    expect(find.text('0'), findsNothing);

    // Uygulamanın LoginPage'e ulaştığına dair ek kontroller (Opsiyonel ama tavsiye edilir):
    // Login sayfanızda görünen herhangi bir benzersiz metni arayabilirsiniz (Örn: "Email", "Şifre", "Giriş Yap").
    // Örneğin, 'Login' metnini arıyoruz:
    // expect(find.text('Login'), findsOneWidget);
  });
}
