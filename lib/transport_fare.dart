import 'dart:io';

const double fixedFee = 2000.00;
double? totalFare = 0;
int? distance = 0;
List<double> extraFares = [100.00, 175.00, 500.00];

void transportFare() {
  while (true) {
    print('Enter Distance Traveled (In Kilometers): ');
    distance = int.parse(stdin.readLineSync()!);
    if (distance == 0) {
      print('You Have Traveled No Distance');
      break;
    }else if (distance! > 0 && distance! <= 10) {
      totalFare = fixedFee;
      break;
    }else if (distance! > 10 && distance! <= 40) {
      totalFare = fixedFee + extraFares[0];
      break;
    }else if (distance! > 40 && distance! <= 150) {
      totalFare = fixedFee + extraFares[1];
      break;
    }else if (distance! > 150) {
      totalFare = fixedFee + extraFares[2];
      break;
    }else {
      print('Invalid Input Please Try Again');
      continue;
    }
  }  
  print('Your Transport Fare Is: GH Cedis $totalFare For A Distance Of $distance Kilometers Traveled');
}

