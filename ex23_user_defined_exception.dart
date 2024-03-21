import 'dart:io';

class NegativeError implements Exception {
  String message;
  NegativeError(this.message);
}

void main(List<String> args) {
  int a;
  try {
    stdout.write('Masukkan bilangan non-negatif: ');
    a = int.parse(stdin.readLineSync()!);
    if (a < 0) {
      throw NegativeError('Nilai tidak boleh negatif.');
    }
    print('Anda memasukkan nilai $a.');
  } on FormatException catch (exception, stackTrace) {
    print('SALAH: nilai yang dimasukkan bukan bilangan.');
  } on NegativeError catch (exception, stackTrace) {
    print('SALAH: ${exception.message}');
  } catch (exception, stackTrace) {
    print('SALAH: terjadi eksepsi bertipe $exception.');
  }
}
