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
