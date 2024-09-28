import 'dart:io' show Platform;
import 'dart:math';

class Lucky {
  late int luckyNumber;
  int? min;
  int? max;
  Lucky() {
    Map<String, String> envVars = Platform.environment;
    String? minValue = envVars['MIN'];
    String? maxValue = envVars['MAX'];

    min = int.tryParse(minValue ?? '1');
    max = int.tryParse(maxValue ?? '100');
    luckyNumber = generateNumber(min!, max!);
  }

  int generateNumber(int min, int max) {
    var random = Random();
    int range = max - min + 1;
    return min + random.nextInt(range);
  }
}
