
import 'dart:io';

void main() {
  print('Pizza Price: Small = 5 USD, Medium = 7 USD, Large = 10 USD');

  bool ordering = true;

  while (ordering) {
    stdout.write(
        'Please enter your pizza size (small, medium, or large): ');
    String size = stdin.readLineSync()!.trim().toLowerCase();

    int price = 0;

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size. Please enter small, medium, or large.');
        continue;
    }

    stdout.write('How many pizzas do you want of $size? ');
    int qty = int.parse(stdin.readLineSync()!);

    print('Your Total Payment is: \$${price * qty}');

    stdout.write('Do you want to order again? (yes/no): ');
    String answer = stdin.readLineSync()!.trim().toLowerCase();

    if (answer != 'yes') {
      ordering = false;
    }
  }

  print('Thank you for ordering!');
}
