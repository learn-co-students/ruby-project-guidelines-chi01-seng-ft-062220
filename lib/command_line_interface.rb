$prompt = TTY::Prompt.new
    
    def welcome 
        answer = $prompt.select("How can I help you?", %w(Reviews Games 
        Player))
        case
        when answer == "Reviews"
            print ">"
        when answer == "Games"
            print ">"
        when answer == "Player"
            print ">"
        end            
    end

    # def welcome
    #     # puts $greeting.colorize(:color => :light_blue)
    #     answer = $prompt.select("Welcome to BIG SPORTS CLI", "NEW USER", "EXISTING USER")
    #         case
    #         when answer == "NEW USER"
    #             puts "Whats your name?"
    #             print "> "
    #             name = gets.chomp
    #             $user = User.create(name: name)
    #             puts "Your user ID is #{$user.id}, please remember this number!"
    #         when answer == "EXISTING USER"
    #             puts "Please enter your user ID"
    #             print "> "
    #             id = gets.chomp
    #             $user = User.all.find{ |user| user.id == id.to_i }
                
    #             puts "Welcome back #{$user.name}"
    #         end
    # end