// Bank Al-Habib Mobile Application CODE

import 'dart:io';

var transactions = {};
var balance = {};
var transType = {};
var count = 0;
main() {
  bool login = false;
  bool log = false;
  List credentials = [
    ["usman khalil", "12345", 20000, "PKBAHH0012345"],
    ["syed faisal", "123", 30000, "PKALFF0012345"],
    ["zohaib farooq", "1234", 40000, "PKMEZN0012345"]
  ];
  while (!login) {
    stdout.write("Enter User Name: ");
    var uname = stdin.readLineSync();
    stdout.write("Enter password: ");
    var password = stdin.readLineSync();

    if ((uname == credentials[0][0] && password == credentials[0][1]) ||
        (uname == credentials[1][0] && password == credentials[1][1]) ||
        (uname == credentials[2][0] && password == credentials[2][1])) {
      print("");
      print("User login successful");
      print("Welcome $uname");
      print("");
      while (!log) {
        print("");
        print("** Bank Al-Habib Mobile Application ***");
        print("");
        print("Press 1 for account balance inquiry");
        print("Press 2 for Pay utility bills");
        print("Press 3 for funds transfer");
        print("Press 4 Easyload");
        print("Press 5 for Railway/Air ticket booking");
        print("Press 6 for view transactions");
        print("");
        stdout.write("Enter your desired option: ");
        var option = int.parse(stdin.readLineSync()!);
        if (option != 1 && option != 6) count = count + 1;
        if (option == 1) {
          print("");
          print("** BALANCE INQUIRY **");
          if (uname == "usman khalil") {
            print("");
            print("ACOUNT TITLE: $uname");
            print("CURRENT BALANCE : Rs.${credentials[0][2]}");
          } else if (uname == "syed faisal") {
            print("");
            print("ACOUNT TITLE:$uname");
            print("CURRENT BALANCE : Rs.${credentials[1][2]}");
          } else if (uname == "zohaib farooq") {
            print("");
            print("ACOUNT TITLE:$uname");
            print("CURRENT BALANCE : Rs.${credentials[2][2]}");
          }
          print("");
        } else if (option == 2) {
          print("");
          print("** ONLINE BILL PAYMENT **");
          print("");
          stdout.write(
              "Enter which bill do you want to pay { Case Sensitive } (KE - Gas - PTCL - KWSB): ");
          var bill = stdin.readLineSync();
          stdout.write("Enter how much amount do you want to pay?: ");
          var rem = int.parse(stdin.readLineSync()!);
          if (uname == "usman khalil") {
            credentials[0][2] = credentials[0][2] - rem;
            print("");
            print("$bill bill is paid");
            print("Rs. $rem is deducted from your account");
            print("Remaining balance: Rs.${credentials[0][2]}");
            print("");
            transactions[count] = rem;
            balance[count] = credentials[0][2];
            transType[count] = "Online Bill Payment";
          } else if (uname == "syed faisal") {
            credentials[1][2] = credentials[1][2] - rem;
            print("");
            print("$bill bill is paid");
            print("Rs. $rem is deducted from your account");
            print("Current balance: Rs.${credentials[1][2]}");
            print("");
            transactions[count] = rem;
            balance[count] = credentials[1][2];
            transType[count] = "Online Bill Payment";
          }
          if (uname == "zohaib farooq") {
            credentials[2][2] = credentials[2][2] - rem;
            print("");
            print("$bill bill is paid");
            print("Rs. $rem is deducted from your account");
            print("Remaining balance: Rs.${credentials[2][2]}");
            print("");
            transactions[count] = rem;
            balance[count] = credentials[2][2];
            transType[count] = "Online Bill Payment";
          }
        } else if (option == 3) {
          print("");
          print("** ONLINE FUNDS TRANSFER **");
          print("");
          stdout.write("Enter IBAN #: ");
          var iban = stdin.readLineSync();
          stdout.write("Enter how much amount do you want to send: ");
          var amount = int.parse(stdin.readLineSync()!);
          if (uname == "usman khalil") {
            if (iban == "PKALFF0012345") {
              credentials[1][2] = credentials[1][2] + amount;
              credentials[0][2] = credentials[0][2] - amount;
              print("");
              print("Rs. $amount is debited from ${credentials[0][0]} account");
              print("Current balance of ${credentials[0][0]} is Rs.${credentials[0][2]}");
              print("Rs. $amount is credited to ${credentials[1][0]} account");
              print("Current balance of ${credentials[1][0]} is Rs.${credentials[1][2]}");
              print("");
              transactions[count] = amount;
              balance[count] = credentials[0][2];
              transType[count] = "Online Funds Transfer";
            } else if (iban == "PKMEZN0012345") {
              credentials[2][2] = credentials[2][2] + amount;
              credentials[0][2] = credentials[0][2] - amount;
              print("");
              print("Rs. $amount is debited from ${credentials[0][0]} account");
              print("Current balance: Rs.${credentials[0][2]}");
              print("Rs. $amount is credited to ${credentials[2][0]} account");
              print("Current balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = amount;
              balance[count] = credentials[0][2];
              transType[count] = "Online Funds Transfer";
            }
          } else if (uname == "syed faisal") {
            if (iban == "PKBAHH0012345") {
              credentials[0][2] = credentials[0][2] + amount;
              credentials[1][2] = credentials[1][2] - amount;
              print("");
              print("Rs. $amount is debited from ${credentials[1][0]} account");
              print("Current balance: Rs.${credentials[1][2]}");
              print("Rs. $amount is credited to ${credentials[0][0]} account");
              print("Current balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = amount;
              balance[count] = credentials[1][2];
              transType[count] = "Online Funds Transfer";
            } else if (iban == "PKMEZN0012345") {
              credentials[2][2] = credentials[2][2] + amount;
              credentials[1][2] = credentials[1][2] - amount;
              print("");
              print("Rs. $amount is debited from ${credentials[1][0]} account");
              print("Current balance: Rs.${credentials[1][2]}");
              print("Rs. $amount is credited to ${credentials[2][0]} account");
              print("Current balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = amount;
              balance[count] = credentials[1][2];
              transType[count] = "Online Funds Transfer";
            }
          } else if (uname == "zohaib farooq") {
            if (iban == "PKBAHH0012345") {
              credentials[0][2] = credentials[0][2] + amount;
              credentials[2][2] = credentials[2][2] - amount;
              print("");
              print("Rs. $amount is debited from ${credentials[2][0]} account");
              print("Current balance: Rs.${credentials[2][2]}");
              print("Rs. $amount is credited to ${credentials[0][0]} account");
              print("Current balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = amount;
              balance[count] = credentials[2][2];
              transType[count] = "Online Funds Transfer";
            } else if (iban == "PKALFF0012345") {
              credentials[1][2] = credentials[1][2] + amount;
              credentials[2][2] = credentials[2][2] - amount;
              print("Rs. $amount is debited from ${credentials[2][0]} account");
              print("Current balance: Rs.${credentials[2][2]}");
              print("Rs. $amount is credited to ${credentials[1][0]} account");
              print("Current balance: Rs.${credentials[1][2]}");
              print("");
              transactions[count] = amount;
              balance[count] = credentials[2][2];
              transType[count] = "Online Funds Transfer";
            }
          }
        } else if (option == 4) {
          print("");
          print("** EASY LOAD **");
          print("");
          stdout
              .write("Enter mobile # on which you want to transfer balance: ");
          var mob = stdin.readLineSync();
          stdout.write("Enter how much amount do you want to transfer: ");
          var rem = int.parse(stdin.readLineSync()!);
          if (uname == "usman khalil") {
            credentials[0][2] = credentials[0][2] - rem;
            print("");
            print("Balance transfered on $mob");
            print("Rs. $rem is deducted from your account");
            print("Remaining balance: Rs.${credentials[0][2]}");
            print("");
            transactions[count] = rem;
            balance[count] = credentials[0][2];
            transType[count] = "Easy Load Transfer";
          } else if (uname == "syed faisal") {
            credentials[1][2] = credentials[1][2] - rem;
            print("");
            print("Balance transfered on $mob");
            print("Rs. $rem is deducted from your account");
            print("Remaining balance: Rs.${credentials[1][2]}");
            print("");
            transactions[count] = rem;
            balance[count] = credentials[1][2];
            transType[count] = "Easy Load Transfer";
          } else if (uname == "zohaib farooq") {
            credentials[2][2] = credentials[2][2] - rem;
            print("");
            print("Balance transfered on $mob");
            print("Rs. $rem is deducted from your account");
            print("Remaining balance: Rs.${credentials[2][2]}");
            print("");
            transactions[count] = rem;
            balance[count] = credentials[2][2];
            transType[count] = "Easy Load Transfer";
          }
        } else if (option == 5) {
          print("");
          print("** ONLINE TICKET BOOKING **");
          print("");
          print("=== AIR TICKET ===");
          print("KHI-LHR: Rs.10000");
          print("KHI-ISB: Rs.15000");
          print("KHI-PSH: Rs.20000");
          print("");
          print("=== RAILWAY TICKET ===");
          print("KHI-LHR: Rs.5000");
          print("KHI-ISB: Rs.7000");
          print("KHI-PSH: Rs.8000");
          print("");
          stdout.write(
              "Enter which ticket do you want to buy (Air or Railway): ");
          var ticket = stdin.readLineSync();
          stdout.write("Enter where do you want to go (LHR-ISB-PSH): ");
          var destination = stdin.readLineSync();
          if (uname == "usman khalil") {
            if (ticket == "Air" && destination == "LHR") {
              credentials[0][2] = credentials[0][2] - 10000;
              print("");
              print("Your Air ticket is confirmed");
              print("Rs.10000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = 10000;
              balance[count] = credentials[0][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Air" && destination == "ISB") {
              credentials[0][2] = credentials[0][2] - 15000;
              print("");
              print("Your Air ticket is confirmed");
              print("Rs.15000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = 15000;
              balance[count] = credentials[0][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Air" && destination == "PSH") {
              credentials[0][2] = credentials[0][2] - 20000;
              print("Your Air ticket is confirmed");
              print("Rs.20000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = 20000;
              balance[count] = credentials[0][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Railway" && destination == "LHR") {
              credentials[0][2] = credentials[0][2] - 5000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.5000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = 5000;
              balance[count] = credentials[0][2];
              transType[count] = "Online Ticket Booking";
            } else if (destination == "ISB") {
              credentials[0][2] = credentials[0][2] - 7000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.7000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = 7000;
              balance[count] = credentials[0][2];
              transType[count] = "Online Ticket Booking";
            } else if (destination == "PSH") {
              credentials[0][2] = credentials[0][2] - 8000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.8000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[0][2]}");
              print("");
              transactions[count] = 8000;
              balance[count] = credentials[0][2];
              transType[count] = "Online Ticket Booking";
            }
          } else if (uname == "syed faisal") {
            if (ticket == "Air" && destination == "LHR") {
              credentials[1][2] = credentials[1][2] - 10000;
              print("");
              print("Your Air ticket is confirmed");
              print("Rs.10000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[1][2]}");
              print("");
              transactions[count] = 10000;
              balance[count] = credentials[1][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Air" && destination == "ISB") {
              credentials[1][2] = credentials[1][2] - 15000;
              print("");
              print("Your Air ticket is confirmed");
              print("Rs.15000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[1][2]}");
              print("");
              transactions[count] = 15000;
              balance[count] = credentials[1][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Air" && destination == "PSH") {
              credentials[1][2] = credentials[1][2] - 20000;
              print("Your Air ticket is confirmed");
              print("Rs.20000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[1][2]}");
              print("");
              transactions[count] = 20000;
              balance[count] = credentials[1][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Railway" && destination == "LHR") {
              credentials[1][2] = credentials[1][2] - 5000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.5000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[1][2]}");
              print("");
              transactions[count] = 5000;
              balance[count] = credentials[1][2];
              transType[count] = "Online Ticket Booking";
            } else if (destination == "ISB") {
              credentials[1][2] = credentials[1][2] - 7000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.7000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[1][2]}");
              print("");
              transactions[count] = 7000;
              balance[count] = credentials[1][2];
              transType[count] = "Online Ticket Booking";
            } else if (destination == "PSH") {
              credentials[1][2] = credentials[1][2] - 8000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.8000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[1][2]}");
              print("");
              transactions[count] = 8000;
              balance[count] = credentials[1][2];
              transType[count] = "Online Ticket Booking";
            }
          } else if (uname == "zohaib farooq") {
            if (ticket == "Air" && destination == "LHR") {
              credentials[2][2] = credentials[2][2] - 10000;
              print("");
              print("Your Air ticket is confirmed");
              print("Rs.10000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = 10000;
              balance[count] = credentials[2][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Air" && destination == "ISB") {
              credentials[2][2] = credentials[2][2] - 15000;
              print("");
              print("Your Air ticket is confirmed");
              print("Rs.15000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = 15000;
              balance[count] = credentials[2][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Air" && destination == "PSH") {
              credentials[2][2] = credentials[2][2] - 20000;
              print("Your Air ticket is confirmed");
              print("Rs.20000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = 20000;
              balance[count] = credentials[2][2];
              transType[count] = "Online Ticket Booking";
            } else if (ticket == "Railway" && destination == "LHR") {
              credentials[2][2] = credentials[2][2] - 5000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.5000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = 5000;
              balance[count] = credentials[2][2];
              transType[count] = "Online Ticket Booking";
            } else if (destination == "ISB") {
              credentials[2][2] = credentials[2][2] - 7000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.7000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = 7000;
              balance[count] = credentials[2][2];
              transType[count] = "Online Ticket Booking";
            } else if (destination == "PSH") {
              credentials[2][2] = credentials[2][2] - 8000;
              print("");
              print("Your Railway ticket is confirmed");
              print("Rs.8000 is deducted from your account");
              print("Remaining balance: Rs.${credentials[2][2]}");
              print("");
              transactions[count] = 8000;
              balance[count] = credentials[2][2];
              transType[count] = "Online Ticket Booking";
            }
          }
        } else if (option == 6) {
          print("");
          print("** TRANSACTIONS **");
          print("");
          print("Transaction Type:$transType");
          print("Transactions:${transactions}");
          print("Remaining Balance:$balance");
          print("");
        }
       
        stdout.write(
            "press 1 for returning to the dashboard again and 0 for logout: ");
        var opt = int.parse(stdin.readLineSync()!);
        if (opt == 1) {
          log = false;
        } else if (opt == 0) {
          log = true;
          login = true;
        }
      }
    } else {
      print("");
      print("Invalid User Name or Password");
      print("");
    }
  }
}