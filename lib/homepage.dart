import 'package:flutter/material.dart';
import 'dummy-fakultas.dart';
import 'detailupn.dart';

class halamanutama extends StatefulWidget {
  final String username;
  const halamanutama({Key? key, required this.username});

  @override
  State<halamanutama> createState() => _halamanutamaState();
}

class _halamanutamaState extends State<halamanutama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo ${widget.username}'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sudahkan kamu mengenal UPN Jogja"),
                Text("UPN Jogja adalah kampus favorit di DIY lho!"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Detailupn();
                    }));
                  },
                  child: Text('Kenalan lebih lanjut yuk!'),
                )
              ],
            ),
          ),
          Expanded(
            child: _facultyCard(),
          ),
        ],
      ),
    );
  }

  Widget _facultyCard() {
    return ListView.builder(
      itemCount: facultyList.length,
      itemBuilder: (context, index) {
        var fakultas = facultyList[index];
        return Container(
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      fakultas.imageUrls[2],
                      height: 100,
                      width: 200,
                    ),
                    Column(
                      children: [
                        Text('${fakultas.name}'),
                        Text('Jumlah jurusan: ${fakultas.numberOfMajors}'),
                        Text('Jumlah mahasiswa: ${fakultas.numberOfStudents}'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
