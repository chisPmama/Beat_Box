require './lib/node'
require 'pry'

class LinkedList
    attr_reader :head
    def initialize 
        @head = nil # => head can be reassigned
    end

    def append (input_data)
        # node_boop = Node.new("boop") # ==> @data = "plop", @next_node = nil
        if @head == nil
            new_node = Node.new(input_data)
            @head = new_node
        end
    end

    # def count
    #     list_count = 0
    #     if 

        
    # end
end

binding.pry