require './lib/node'
require 'pry'

class LinkedList
    attr_reader :head
    def initialize 
        @head = nil # => head can be reassigned
    end

    def append (input_data)
        if @head == nil
            first_node = Node.new(input_data) # creates node, list.append("boop") # ==> @data = "boop", @next_node = nil
            @head = first_node
            # @list_count+=1 # SKIP FOR NOW (originally defined @list_count outside from class)
        # elsif
        #     last_node = first_node
        #     @head.next_node = input_data
        end
    end

    # def count SKIP!!!
    # #     counter = 0
    # #     # .each do |counted_node|
    # #         if !counted_node == nil
    # #             counter+=1
    # #         end
    # #     end
    #    @list_count
    # end

    def to_string
        
    end
end

binding.pry