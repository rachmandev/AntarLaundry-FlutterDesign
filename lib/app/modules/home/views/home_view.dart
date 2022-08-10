import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    child: Image.asset("assets/images/bg-home.png"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/images/kurir.png"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/logoApps.png"),
                        SizedBox(height: 20),
                        Text(
                          "Selamat Datang,",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "RAHMAN",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 45),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Saldo : ",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Rp.100.000",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Text(
                                          "Antar Point : ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        SizedBox(width: 45),
                                        Text(
                                          "100 point",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF55CB95),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      color: Color(0xFFE1E3FA),
                                      child:
                                          Image.asset("assets/icons/bill.png"),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Add Saldo",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      color: Color(0xFFE1E3FA),
                                      child: Image.asset(
                                          "assets/icons/outcome.png"),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Get Point",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Layanan Kami",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kategoriLayanan(
                          title: "Kiloan",
                          image: "assets/icons/kiloan.png",
                        ),
                        kategoriLayanan(
                          title: "Satuan",
                          image: "assets/icons/pakaian.png",
                        ),
                        kategoriLayanan(
                          title: "VIP",
                          image: "assets/icons/dress.png",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kategoriLayanan(
                          title: "Karpet",
                          image: "assets/icons/karpet.png",
                        ),
                        kategoriLayanan(
                          title: "Setrika Saja",
                          image: "assets/icons/setrika.png",
                        ),
                        kategoriLayanan(
                          title: "Ekpress",
                          image: "assets/icons/truck-delivery.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.26,
              padding: EdgeInsets.symmetric(horizontal: 23),
              decoration: BoxDecoration(
                color: Color(0xFFE5E5E5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    "Pesanan Aktif",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      children: [
                        StatusPesanan(
                          resi: "Pesanan No. 0002143",
                          status: false,
                        ),
                        StatusPesanan(
                          resi: "Pesanan No. 0002142",
                          status: false,
                        ),
                        StatusPesanan(
                          resi: "Pesanan No. 0002141",
                          status: true,
                        ),
                        StatusPesanan(
                          resi: "Pesanan No. 0002140",
                          status: true,
                        ),
                        StatusPesanan(
                          resi: "Pesanan No. 0002139",
                          status: true,
                        ),
                        StatusPesanan(
                          resi: "Pesanan No. 0002138",
                          status: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusPesanan extends StatelessWidget {
  StatusPesanan({
    Key? key,
    required this.resi,
    required this.status,
  }) : super(key: key);

  final String resi;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset("assets/icons/washing-machine.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text(
                  resi,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  (status == true) ? "Sudah Selesai" : "Masih Dicuci",
                  style: TextStyle(
                    fontSize: 16,
                    color: (status == true)
                        ? Color(0xFF55CB95)
                        : Color(0xFFFF4D00),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class kategoriLayanan extends StatelessWidget {
  kategoriLayanan({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: Color(0xFFE0F7EF),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
