class Title

    def self.display
        puts "Welcome to....."
        puts 
"██╗██████╗     ██████╗ ███████╗████████╗███████╗ ██████╗████████╗██╗██╗   ██╗███████╗
██║██╔══██╗    ██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██║██║   ██║██╔════╝
██║██████╔╝    ██║  ██║█████╗     ██║   █████╗  ██║        ██║   ██║██║   ██║█████╗  
██║██╔═══╝     ██║  ██║██╔══╝     ██║   ██╔══╝  ██║        ██║   ██║╚██╗ ██╔╝██╔══╝  
██║██║         ██████╔╝███████╗   ██║   ███████╗╚██████╗   ██║   ██║ ╚████╔╝ ███████╗
╚═╝╚═╝         ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝ ╚═════╝   ╚═╝   ╚═╝  ╚═══╝  ╚══════╝".each_char do |x|
        sleep 0.001
        print x
    end

        puts "
        
*************************************************************************************
        
        "
        puts "Enter target IPv4 address..."
    end

    def self.next_display
        name = IpDetective.all[-1].name
        puts "                                     "
        puts "What would you like to know about: #{name} ?"
        puts "                                     "
    end
end

# Jesus this file is ugly as sin, unfortunately could not figure how to have the ASCII art display correctly otherwise