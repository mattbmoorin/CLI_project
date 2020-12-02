class CLI
    def start
        Title.display
        target = gets.strip
        #binding.pry
        API.get_info(target)
    end
end