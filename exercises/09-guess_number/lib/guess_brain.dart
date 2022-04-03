class GuessBrain {
  final String _message = '';
  String response = '';

  set(String response) {
    response = response;
  }

  String get message => _message;
  String get response => _response;
}

// import 'dart:math';

// // void main() {
// //   print("""\n
// //   Hello boss. I am your laptop.
// //   Please, think of a number between 0 and 100.
// //   I will try to guess it and blow your mind.

// //   If my guess is too low, type "low". If I am too high, type "high".
// //   If I guess your number correctly, type "yes".
// //   """);

// //   compGuess();
// // }

// class GuessBrain {
//   int guess = 0;
//   String compGuess(String response) {
//     String message = '';

//     final random = Random();
//     List<int> numList = List.generate(101, (i) => i);
//     guess = numList[random.nextInt(numList.length)];
//     int count = 0;

//     while (true) {
//       count += 1;

//       message = "\nIs $guess your number? ";

//       if (response == "yes") {
//         message = "\nI got it! Attempts: $count\n";
//         break;
//       } else if (response == "low") {
//         numList = numList.where((e) => e > guess).toList();
//         guess = numList[random.nextInt(numList.length)];
//       } else if (response == "high") {
//         numList = numList.where((e) => e < guess).toList();
//         guess = numList[random.nextInt(numList.length)];
//       }
//     }

//     return message;
//   }
// }
