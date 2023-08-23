required_relative './enumerable.rb'

class MyList
    include Enumerable

    def initialize(*list)
        @list = list
    end    

    def each
        @list.each { |x| yield x }
    end
end