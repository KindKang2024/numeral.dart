import 'package:fixnum/fixnum.dart';
import 'package:numeral/numeral.dart';

void main() {
  print(1.beautiful); // 1
  print(1000.beautiful); // 1K
  print(10000.beautiful); // 10K
  print(100000.beautiful); // 100K
  print(1000000.beautiful); // 1M
  print(10000000.beautiful); // 10M
  print(100000000.beautiful); // 100M
  print(1000000000.beautiful); // 1B
  print(10000000000.beautiful); // 10B
  print(100000000000.beautiful); // 100B
  print(1000000000000.beautiful); // 1T
  print(10000000000000.beautiful); // 10T

  Numeral.builder = (unit) => unit == NumeralUnit.less ? 'L' : unit.value;
  print(1.beautiful); // 1L

  print(12345.numeral(digits: 2)); // 12.35K

  Numeral.digits = 1;
  print(12345.beautiful); // 12.3K
  Numeral.digits = 3; // reset

  print('\nInt64:');
  print(Int64(1000).beautiful);
  print(Int64(123456).numeral(digits: 2, rounded: true));

  print('\nBigInt:');
  print(BigInt.from(1000).beautiful);
  final bigT = BigInt.parse('123456789123456789');
  print(bigT.numeral(digits: 3));
}
