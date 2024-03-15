
# SA 8 - ACT 2 - Q8 - Encapsulation using Private Methods

class BankAccount
    def initialize(balance = 0)
        @balance = balance
      end
    
      def deposit(amount)
        @balance += amount
        log_transaction("Deposit #{amount}. Balance is now #{@balance}")
      end
    
      def withdraw(amount)
        @balance -= amount
        log_transaction("Withdrawal #{amount}. Balance is now #{@balance}")
      end
    
      # private method = a method that can only be called from within the class where it is defined. 
      # It cannot be accessed from outside the class, including instances of the class and subclasses.
      private
    
      def log_transaction(log_transaction)
        puts "#{log_transaction}"
      end
    end
    
    money = BankAccount.new(0)
    money.deposit(1500)
    money.withdraw(200)
