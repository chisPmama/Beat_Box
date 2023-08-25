require "./lib/node"
require "./lib/linked_link.rb"
require "rspec"

describe LinkedList do
    describe '#initialize' do
        it 'is an instance of LinkedList' do
            list = LinkedList.new
             expect(list).to be_a LinkedList
        end

        it 'has a head that is empty' do
            # node = Node.new("plop")
            # node.data
            # expect(node.data).to eq("plop")
        end

        it 'can append a new node' do
            node = Node.new("plop")
            node.next_node
            list.append("doop") # doop needs to be added as a new node and 
            #see if there is already a head (in this case there is with plop, add to space after)
            expect(node.next_node.to eq(nil))
        end

        it 'can append a new node AND place into next position' do
            node = Node.new("plop")
            node.next_node
            list.append("doop") # doop needs to be added as a new node and 
            #see if there is already a head (in this case there is with plop, add to space after)
            expect(node.next_node.to eq(nil))
        end
        end
    end
end