# require 'pry'

class Node
        attr_reader :data, :next_node

    def initialize(data)
        @data = data
        @next_node = next_node # This will return nil initially every time until appended!
    end

end


# binding.pry