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
        counter = 0 # Counter starts at 0
        counting_node = @head # Reference counting spot of head
        if counting_node != nil #if there is a head, that indicates there is one element therefore it starts at 1 (L:29)
            counter = 1 
           until counting_node.next_node == nil #Checks for the end and adds one
            counter +=1
            counting_node = counting_node.next_node #Moves "down" the chain
        end
         end
        counter # Returns new counter after running through the loops
    end

    def to_string
        string_node = @head #start string at head
        string_words = [] #create an empty array for the data
        until string_node.next_node == nil #until the end of the LinkedList
            string_data = string_node.data.to_s
            string_words << string_data
            string_node = string_node.next_node
        end
        if string_node.next_node == nil
            string_data = string_node.data.to_s
            string_words << string_data
        end
        p string_words.join(" ")
    end
    # def to_string
    #     while !@next_node == nil 

    #     end
    # end
end

binding.pry