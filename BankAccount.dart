void main() {
 var account1 = BankAccount(12 , 20000);
  account1.withdraw(800);
  account1.deposit(400);
 account1.displayAccountInfo();
  
  var account2 = BankAccount.withZeroBalance(accountID:12);
  account2.withdraw(300);
  account2.deposit(150);
 account2.displayAccountInfo();
  print("==========================");
  //different scenarios, for insufficient balance and invalid inputs 
  account1.withdraw(200);
  account1.deposit(300); 
  account1.withdraw(-150);
  account1.deposit(-150);
    print("==========================");
   account1.withdraw(100);
  account1.deposit(300); 
  account2.withdraw(21000);
  account2.deposit(0);
  
  
  
}

class BankAccount{
  int accountID;
  double balance;
  //first constructor
  BankAccount(this.accountID , this.balance);
  //second constructor: named constructor
  BankAccount.withZeroBalance({required this.accountID}) : balance = 0;

  //withdraw method
  void withdraw(double amount ){
    if(amount <= 0){
      print("your amount is less than zero");
    }
    else if(amount > 0){
      if(balance >= amount){
        balance -= amount;
        print("you have withdrawn: $amount from: $balance");
      }if(amount > balance){
        print("Not enough balance ");
      }
    }
  }
  //deposit method
  void deposit(double amount){
     if(amount <= 0){
      print("your amount is less than zero");
    }
    else if(amount > 0){
        balance += amount;
        print("You add: $amount, and your balance now is: $balance");
      }else{
        print("Your amount have a issue");
      }
  }
//displayAccountInfo method
void displayAccountInfo(){
  print("Your Account ID: $accountID, and your balance: $balance");
} 


}

