import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> colors = [
    const Color.fromARGB(255, 61, 140, 180),
    const Color.fromARGB(255, 255, 223, 129),
    const Color.fromARGB(255, 199, 166, 255),
    const Color.fromARGB(255, 140, 219, 255),
    const Color.fromARGB(255, 253, 188, 255)
  ];

  Stream<Color> getColorStream() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
    });
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }
  
  addError() {
    controller.sink.addError('error');
  }

  
  
}

