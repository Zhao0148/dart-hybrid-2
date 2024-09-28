import 'package:hybrid_2/lucky.dart';

void main(List<String> arguments) {
  // Check if arguments are provided
  if (arguments.isEmpty) print("Names not detected. Please provide names.");

  final namesWithGreetings = arguments.map((name) {
    final lucky = Lucky();
    var capitalized = capitalizeName(name);
    var greeting = generateGreeting(capitalized, lucky.luckyNumber);
    return greeting;
  }).toList();

  printGreetings(namesWithGreetings);
}

void printGreetings(List<String> greetings) {
  for (var greeting in greetings) {
    print(greeting);
  }
}

String capitalizeName(String name) {
  if (name.isEmpty) return name;
  return name[0].toUpperCase() + name.substring(1).toLowerCase();
}

String generateGreeting(String name, int integer) {
  return 'Hello, $name. Your lucky number is $integer.';
}
