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
        else
        current_node = @head
            until current_node.next_node == nil # ==> stops at the end when the last node's data equals to nil ======= Change to Until??
                current_node = current_node.next_node # ==> current_node is reassigned to next_node, which was nil && # iterating through the list
            end
        current_node.next_node = new_node # What was the last node before the new append now references the new_node as next_node
        end
    end


    def count
        counter = 0
    end

    # def to_string
    #     while !@next_node == nil 

    #     end
    # end
end

binding.pry