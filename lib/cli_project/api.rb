class API
    def self.get_info(target)
        key = ENV["SHODAN_API_KEY"]
        
        until IPAddress.valid?(target) == true
            puts "Invalid IP, please enter a vaild IPv4 address..."
            target = gets.strip
        end
        
        # Use this API to build in automated DNS IP lookup for user 
        # "https://www.whoisxmlapi.com/whoisserver/DNSService?apiKey=#{WHOIS_API_KEY}&domainName=#{dns_target}&type=1" 
        
        url = "https://api.shodan.io/shodan/host/#{target}?key=#{key}" 
        response = HTTParty.get(url)
        
        name = target 
        
        hash = {
            organization: response["org"],
            country: response["country_name"],    
            hostnames: response["hostnames"],
            ports: response["ports"]
        }
        
        IpDetective.new(name, hash)
    end
end