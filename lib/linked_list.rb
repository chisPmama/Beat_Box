require './lib/node'
require 'pry'


class LinkedList
    attr_reader :head
    def initialize 
        @head = nil # => head can be reassigned
    end

    def append (data)
        
        new_node = Node.new(data) # creates node, list.append("boop") # ==> @data = "boop", @next_node = nil
        if @head == nil
            @head = new_node
            # @list_count+=1 # SKIP FOR NOW (originally defined @list_count outside from class)
        end
        current_node = @head # ==> Initially: @data = "boop", @next_node = nil
        while !current_node == nil # ==> if list has a head 
            current_node = current_node.next_node # ==> current_node is reassigned to next_node, which was nil && # iterating through the list
        end
    end

    def count
        # counter = 
        # _______.each do |node|
        # if !node == nil
        # counter +=1
        # end
        @counter
    end

    # def to_string
    #     while !@next_node == nil 

    #     end
    # end
end

binding.pry