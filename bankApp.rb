# Bank App

$balance = 5000
def showBalance()
    
    puts 'enter the username'
    usernameToComp = gets.chomp()
    puts 'enter the password'
    passwordToComp = gets.chomp()
    
    if usernameToComp === $username  and passwordToComp === $password
        
        puts "Your Balance : #{$balance}"
        puts"click 1 to go back or 0 to exit"
        opt = gets.chomp().to_i
        
         if opt === 1
            main()
        else
            exit(0)
        end
        
    else
        
        puts "Invalid username or password"
        
        puts"click 1 to enter again or 0 to exit"
        opt = gets.chomp().to_i
        
        if opt === 1
            showBalance()
        else
            exit(0)
        end
        
    end
    
end


def deposite()
    
    puts 'enter the username'
    usernameToComp = gets.chomp()
    puts 'enter the password'
    passwordToComp = gets.chomp()
    
    
    if usernameToComp === $username  and passwordToComp === $password
        
        puts "enter the amount for Deposite"
        amount = gets.chomp().to_i
        $balance += amount
        puts "Your New balance is #{$balance}"
        
        puts"click 1 to go back or 0 to exit"
        opt = gets.chomp().to_i
        
         if opt === 1
            main()
        else
            exit(0)
        end
        
    else
        
        puts "Invalid username or password"
        
        puts"click 1 to enter again or 0 to exit"
        opt = gets.chomp().to_i
        
        if opt === 1
            deposite()
        else
            exit(0)
        end
        
    end
    
end


def withdrwal()
    
    puts 'enter the username'
    usernameToComp = gets.chomp()
    puts 'enter the password'
    passwordToComp = gets.chomp()
    
    
    if usernameToComp === $username  and passwordToComp === $password
        
        puts "enter the amount for withdrwal"
        amount = gets.chomp().to_i
          if amount > $balance 
               puts "Insufficent balance.."
               puts "click 1 to enter again or 0 to exit"
                opt = gets.chomp().to_i
                    
                     if opt === 1
                        withdrwal()
                    else
                        exit(0)
                    end
               
          else
              
        $balance -= amount
        puts "Your New balance is #{$balance}"
        
        puts"click 1 to go back or 0 to exit"
        opt = gets.chomp().to_i
        
         if opt === 1
            main()
        else
            exit(0)
        end
              
          end
      
        
    else
        
        puts "Invalid username or password"
        
        puts"click 1 to enter again or 0 to exit"
        opt = gets.chomp().to_i
        
        if opt === 1
            withdrwal()
        else
            exit(0)
        end
        
    end
    
end
def change_password()
    

    puts 'enter the old password'
    
    old_password = gets.chomp()
    
    if old_password === $password
        
            puts 'enter the new password'
            new_password = gets.chomp()
            
            $password = new_password
            
            puts 'password changed sucessfully....'
            
             puts"click 1 to enter again or 0 to exit"
                opt = gets.chomp().to_i
                
                if opt === 1
                    main()
                else
                    exit(0)
                end
                
         else
             
                puts "Invalid old password"
        
                    puts"click 1 to enter again or 0 to exit"
                    opt = gets.chomp().to_i
                    
                    if opt === 1
                        change_password()
                    else
                        exit(0)
                    end
             
             
        
    end
    
end


puts 'enter the username'
$username = gets.chomp()
puts 'enter the password'
$password = gets.chomp()




def main()
    puts "Enter your Choice \n\n 1.Balance          2.Deposite\n\n3.Widthdrwal        4.change password"
    choice =  gets.chomp()
        
        case choice
          when "1"
              showBalance()
          when "2"
              deposite()
          when "3"
              withdrwal()
          when "4"
              change_password()
          else
              puts "Invalid Choice"
        end

end

main()



# with class(opps)

class BankAccount
    #   attr_accessor :username, :password, :balance
    
      def initialize(username, password, balance = 5000)
        @username = username
        @password = password
        @balance = balance
      end
    
      def authenticate
        puts 'Enter the username:'
        input_username = gets.chomp
        puts 'Enter the password:'
        input_password = gets.chomp
        input_username == @username && input_password == @password
      end
    
      def show_balance
        if authenticate
          puts "Your balance: #{@balance}"
        else
          puts "Invalid username or password"
        end
      end
    
      def deposit
        if authenticate
          puts 'Enter the amount to deposit:'
          amount = gets.chomp.to_i
          @balance += amount
          puts "Your new balance is #{@balance}"
        else
          puts "Invalid username or password"
        end
      end
    
      def withdraw
        if authenticate
          puts 'Enter the amount to withdraw:'
          amount = gets.chomp.to_i
          if amount > @balance
            puts "Insufficient balance"
          else
            @balance -= amount
            puts "Your new balance is #{@balance}"
          end
        else
          puts "Invalid username or password"
        end
      end
    
      def change_password
        puts 'Enter the old password:'
        old_password = gets.chomp
        if old_password == @password
          puts 'Enter the new password:'
          new_password = gets.chomp
          @password = new_password
          puts 'Password changed successfully'
        else
          puts "Invalid old password"
        end
      end
    
      def main_menu
        loop do
          puts "Enter your choice:\n1. Balance\n2. Deposit\n3. Withdrawal\n4. Change password\n0. Exit"
          choice = gets.chomp.to_i
          case choice
          when 1
            show_balance
          when 2
            deposit
          when 3
            withdraw
          when 4
            change_password
          when 0
            puts "Exiting..."
            break
          else
            puts "Invalid choice"
          end
        end
      end
    end
    
    puts 'Enter the username:'
    username = gets.chomp
    puts 'Enter the password:'
    password = gets.chomp
    
    account = BankAccount.new(username, password)
    account.main_menu
    