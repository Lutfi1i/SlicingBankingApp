import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'lib/assets/icons/menu.svg',
                      width: 12,
                      height: 12,
                    ),
                    tooltip: 'Menu',
                  ),
                  const SizedBox(width: 8),

                  // Avatar, AppBar
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('lib/assets/avatar.jpeg'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Hai Lutfi',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(),
                        Text(
                          'Bagaimana Kabarmu?',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            SvgPicture.asset(
              'lib/assets/icons/notification_2.svg',
              width: 16,
              height: 16,
            ),
          ],
        ),
      ),

     

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
  
            const Text(
              "Naufal Lutfi",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Rp2.363.589",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.all(6),
                  
                    child: SvgPicture.asset(
                    'lib/assets/icons/akar-icons_eye-closed.svg',
                    width: 20,
                    height: 20,
                    ),
                )
              ],
            ),
            const SizedBox(height: 2),
            const Text(
              "+Rp25.000.000",
              style: TextStyle(
                fontSize: 13,
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),

            // Card Section
            Center(
              child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Kamu Menghemat Rp100.000",
                style: TextStyle(fontSize: 12, color: Colors.purple),
              ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'lib/assets/bank/visa.png',
                        width: 40,
                        height: 24,
                      ),
                       Image.asset(
                        'lib/assets/bank/logo.png',
                        width: 40,
                        height: 24,
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  const SizedBox(height: 6),
                  const Text(
                    "**** **** **** 5218",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Berlaku Sampai 12/26",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),


            Row(
              children: [
                _buildActionButton(Icons.qr_code_2, "QRIS"),
                const SizedBox(width: 18),
                _buildActionButton(Icons.payment_outlined, "Transfer/Bayar"),
              ],
            ),
            const SizedBox(height: 40),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Transaksi Terakhir",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 18),

            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      child: Text("R"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "lib/assets/bank/Rakuten.png",
                          width: 14,
                          height: 14,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("RUKIA KUCHIKI",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600)),
                      Text(
                        "Bank Rakuten",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "-Rp20.344.000",
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "1 Januari 2025",
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      child: Text("H"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "lib/assets/bank/BCA.png",
                          width: 14,
                          height: 14,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Hendra",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600)),
                      Text(
                        "Bank BCA",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "+Rp1.500.000",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.green),
                    ),
                    Text(
                      "29 Desember 2024",
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
  

            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      child: Text("K"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "lib/assets/bank/BNI.png",
                          width: 14,
                          height: 14,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Kurva",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600)),
                      Text(
                        "Bank BNI",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "-Rp500.000",
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "3 Januari 2022",
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  


  Widget _buildActionButton(IconData icon, String label) {
    return Container(
      width: 140,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
