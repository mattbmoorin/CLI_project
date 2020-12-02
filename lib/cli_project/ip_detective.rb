class IpDetective
    attr_accessor :name, :organization, :country, :hostnames, :ports
    @@all = []

    def initialize(name, hash) #org, country, hostnames, ports) 
        hash.each { |k,v| self.send "#{k}=", v }
        @@all << self
        #binding.pry
    end

    def self.all
        @@all
    end
end