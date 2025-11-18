// random_number_bloc.dart

import 'dart:async';
import 'dart:math';

class RandomNumberBloc { 
  
  // StreamController for input events
  final _generateRandomController = StreamController<void>();
  
  // StreamController for output
  final _randomNumberController = StreamController<int>(); 

  // Input Sink. Digunakan untuk mengirim event ke BLoC (Input)
  Sink<void> get generateRandom => _generateRandomController.sink; 
  
  // Output Stream. Digunakan untuk mendengarkan hasil dari BLoC (Output)
  Stream<int> get randomNumber => _randomNumberController.stream; 
  // Baris '_secondsStreamController.sink;' diabaikan karena tampak sebagai sisa kode/kesalahan.

  RandomNumberBloc() { 
    // Mendengarkan event dari input (generateRandom Sink)
    _generateRandomController.stream.listen((_) {
      // Ketika ada event, buat angka acak
      final random = Random().nextInt(10); 
      
      // Kirim angka acak ke output Stream
      _randomNumberController.sink.add(random);
    });
  }

  void dispose() { 
    // Penting untuk menutup semua StreamController
    _generateRandomController.close();
    _randomNumberController.close();
  }
}