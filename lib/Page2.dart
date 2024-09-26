import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile'),
        backgroundColor: const Color.fromRGBO(137, 156, 170, 1),
      ),
      body: SingleChildScrollView( // Menambahkan ScrollView untuk menghindari overflow
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Muhammad Ihsan Fahruroji', // Mengganti nama
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24),
            Card(
              color: const Color.fromRGBO(137, 156, 170, 1),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Halo,perkenalkan nama saya Muhammad ihsan fahruroji dan saya adalah salah satu siswa di SMK Wikrama Bogor yang  berjurusan PPLG',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: const Color.fromRGBO(137, 156, 170, 1),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'History',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Saya mulai tertarik dengan pemrograman saat belajar bahasa pemograman di sekolah. Sejak itu, saya mendalami pembelajaran tentang programming dan terus mengasah skil saya dalam bidang tersebut',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),  // Rounded corners
              ),
              elevation: 4,  // Optional: for shadow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(137, 156, 170, 1),  // Matching the header color
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Skill',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,  // Adjust text color if needed
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('HTML', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),
                        Text('CSS', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),
                        Text('Javascript', style: TextStyle(fontSize: 16)),
                         SizedBox(height: 8),
                        Text('PHP', style: TextStyle(fontSize: 16)),
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
