class IpDetective
    attr_accessor :name, :organization, :country, :hostnames, :ports
    @@all = []

    def initialize(name, hash) 
        hash.each { |k,v| self.send "#{k}=", v }
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end