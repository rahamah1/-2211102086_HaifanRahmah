import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Jadwal Harian')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(jadwal.length, (index) {
              return Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[(index % 9 + 1) * 100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      jadwal[index]['hari']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      jadwal[index]['kegiatan']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> jadwal = [
  {'hari': 'Senin', 'kegiatan': 'Meeting pagi pukul 09:00'},
  {'hari': 'Selasa', 'kegiatan': 'Coding project pukul 10:00'},
  {'hari': 'Rabu', 'kegiatan': 'Review kode pukul 14:00'},
  {'hari': 'Kamis', 'kegiatan': 'Presentasi pukul 11:00'},
  {'hari': 'Jumat', 'kegiatan': 'Diskusi tim pukul 15:00'},
  {'hari': 'Sabtu', 'kegiatan': 'Belajar Flutter pukul 13:00'},
  {'hari': 'Minggu', 'kegiatan': 'Waktu santai'},
];
