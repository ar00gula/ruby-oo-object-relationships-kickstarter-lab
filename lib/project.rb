class Project

    @@all = []

    attr_reader :title, :backer

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select{|backer| backer.project == self}
        backers.collect{|backer| backer.backer}

    end

end

