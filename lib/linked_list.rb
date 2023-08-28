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
            until current_node.next_node == nil # ==> stops at the end when the last node's data equals to nil 
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
        string_words = ""
        while string_node
            string_words << string_node.data.to_s + " " #stores value of to_s data into array
            string_node = string_node.next_node #moves position
        end
        string_words.strip  #.join concats the strings together while separating with a " " (space)
    end

    def prepend (data)
        new_node = Node.new(data)
        new_node.next_node = @head
        @head = new_node
    end

    def insert (number, data)
        new_node = Node.new(data)
        current_node = @head # Represents position 0
        if number == 0
            new_node = Node.new(data)
            new_node.next_node = @head
            @head = new_node
        else
            number.times do # Go to the position where the node that needs to be replaced is
                current_node = current_node.next_node
            end
            new_node.next_node = current_node
            current_node = @head # Going back to the head to restart position
            node_before = number - 1 # Set to go to the node before to have it set to the new replacement node value
            node_before.times do
                current_node = current_node.next_node # ==> iterating (number) times to the correct position
            end
            current_node.next_node = new_node # Assigning the node at the node before the replacement node to point at new node
        end
    end

    def find (number, number_elements)
        current_node = @head
        number.times do #moving to requested position
            current_node = current_node.next_node
        end
        return_elements = []
        number_elements.times do 
            found_element = current_node.data.to_s
            return_elements << found_element
            current_node = current_node.next_node
        end
        p return_elements.join(" ")
    end

    def includes?(string)
        current_node = @head
        compare = string.eql? current_node.data
        while compare == false
            current_node = current_node.next_node
            compare = string.eql? current_node.data
        end
        compare
    end
end

binding.pry

list = LinkedList.new
list.append("goofy")
list.append("princess")
list.append("on")
list.append("drugs")
list.to_string