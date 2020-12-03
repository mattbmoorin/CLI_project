class CLI
    def start
        Title.display
        target = gets.strip
        API.get_info(target)
        display_info
    end
    
    def display_info
        Title.next_display
        @show_info = IpDetective.all[-1] # Implement a history option containing all lookups from current session
        puts "1. Country"
        puts "2. Host Names"
        puts "3. Organization Name"    # } I wonder if there's a way to use a loop to puts all of these without having to explicitly type each one using the name's of the instance methods
        puts "4. Open Ports"
        puts "5. Search Again"
        puts "6. Quit"
        choose_info
    end
    
    def choose_info
        choice = gets.strip.to_i
        until choice > 0 && choice < 7
            puts "Invalid selection, please try again."
            choice = gets.strip.to_i
        end
        #binding.pry
        puts @show_info.country if choice == 1
        puts @show_info.hostnames if choice == 2
        puts @show_info.organization if choice == 3  # } Hate this redundant stuff, how to fix? Implement a msg in case of nil val
        puts @show_info.ports if choice == 4
        start if choice == 5
        exit! if choice == 6
        display_info
    end
end