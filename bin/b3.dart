import 'dart:io';

void main() {
  String? holderName;
  double balance = 0.0;
  bool accountCreated = false;

  print("Welcome to the Banking Management System!");

  while (true) {
    print("Choose an option:");
    print("1. Create Account");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. View Account Details");

    stdout.write("\nEnter your choice (1-4): ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter account holder name: ");
      holderName = stdin.readLineSync();
      stdout.write("Enter deposit amount: ");
      balance = double.parse(stdin.readLineSync()!);
      accountCreated = true;
      print("Account created successfully!");
    }

    else if (choice == 2) {
      if (!accountCreated) {
        print("No account found. Please create an account first.");
      } else {
        stdout.write("Enter deposit amount: ");
        double depositAmount = double.parse(stdin.readLineSync()!);
        balance += depositAmount;
        print("Deposit successful. New balance: $balance");
      }
    }

    else if (choice == 3) {
      if (!accountCreated) {
        print("No account found. Please create an account first.");
      } else {
        stdout.write("Enter withdrawal amount: ");
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        if (withdrawAmount > balance) {
          print("Insufficient balance.");
        } else {
          balance -= withdrawAmount;
          print("Withdrawal successful. New balance: $balance");
        }
      }
    }

    else if (choice == 4) {
      if (!accountCreated) {
        print("No account found. Please create an account first.");
      } else {
        print("\n- Account Details -");
        print("Name: $holderName");
        print("Balance: $balance");
      }
    }

    else {
      print("Invalid choice. Please enter 1 to 4.");
    }

    stdout.write("\nDo you want to continue? (yes/no): ");
    String? again = stdin.readLineSync();
    if (again?.toLowerCase() != 'yes') {
      print("\nThank you for using the Banking Management System. Goodbye!");
      break;
    }
  }
}