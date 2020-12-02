class API

    def self.get_info(target)
        key = ENV["SHODAN_API_KEY"]
        
        until IPAddress.valid?(target) == true
            puts "Invalid IP, please enter a vaild IPv4 address..." # <==== Refactor this until? Seems pretty clean to me :^B
            target = gets.strip
        end
        
        # Use this API to build in automated DNS IP lookup for user 
        # "https://www.whoisxmlapi.com/whoisserver/DNSService?apiKey=#{WHOIS_API_KEY}&domainName=#{dns_target}&type=1" 
        
        url = "https://api.shodan.io/shodan/host/#{target}?key=#{key}" 
        response = HTTParty.get(url)
        
        name = target   # <==== Why isn't name equal to target in pry? It's coming back nil
        
        hash = {
            organization: response["org"],
            country: response["country_name"],    
            hostnames: response["hostnames"],
            ports: response["ports"]
        }

        ip_detect = IpDetective.new(name, hash)
        binding.pry
    end
end