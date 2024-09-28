import 'dart:io' show Platform;
import 'dart:math';

class Lucky {
  late int luckyNumber;
  int? min;
  int? max;
  Lucky() {
    Map<String, String> envVars = Platform.environment;
    String? lowerLimit = envVars['MIN'];
    String? upperLimit = envVars['MAX'];

    min = int.tryParse(lowerLimit ?? '1');
    max = int.tryParse(upperLimit ?? '100');
    luckyNumber = generateNumber(min!, max!);
  }

  int generateNumber(int min, int max) {
    var random = Random();
    int range = max - min + 1;
    return min + random.nextInt(range);
  }
}
