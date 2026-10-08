import 'dart:io';

void main() {
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"'); 
  
  stdout.write('Please enter your pizza size (small, medium, or large):\n'); 
  String size = stdin.readLineSync()!.trim().toLowerCase(); 

  int price = 0;
  switch (size) { 
    case 'small': price = 5; break; 
    case 'medium': price = 7; break;
    case 'large': price = 10; break; 
  }

  stdout.write('How many pizzas do you want of $size?\n'); 
  int qty = int.parse(stdin.readLineSync()!);

  print('Your Total Payment is: \$${price * qty}'); 
}