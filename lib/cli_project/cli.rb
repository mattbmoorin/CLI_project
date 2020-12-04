class CLI
    def start
        Title.display
        target = gets.strip
        API.get_info(target)
        display_info
    end
    
    def display_info
        
        Title.next_display
        @show_info = IpDetective.all[-1]
        
        puts "1. Country"
        puts "2. Host Names"
        puts "3. Organization Name"           # I wonder if there's a way to use a loop using the names of the instance methods to puts all of these without having to explicitly type
        puts "4. Open Ports"
        puts "5. Search Again"
        puts "6. Show History"
        puts "7. Quit"
        
        choose_info
    end

    def clear_screen
        system("cls") || system("clear")
    end
    
    def choose_info
        choice = gets.strip.to_i
        
        clear_screen
       
        case choice
        when 1
            puts @show_info.country
        when 2
            puts @show_info.hostnames
        when 3
            puts @show_info.organization
        when 4
            puts @show_info.ports
        when 5
            start
        when 6
            puts IpDetective.all.map { |i| i.name }
        when 7
            exit!
        else
            puts "Invalid selection, please try again."
        end
        
        display_info
    end
end