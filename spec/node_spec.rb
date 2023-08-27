require "./lib/node"
require "rspec"

describe Node do
    describe '#initialize' do
        it 'is an instance of Node' do
             node = Node.new("plop")
             expect(node).to be_a Node
        end

        it 'can collect data' do
            node = Node.new("plop")
            expect(node.data).to eq("plop")
        end

        it 'is locating next node, which is empty' do
            node = Node.new("plop")
            expect(node.next_node).to be_nil
        end
    end
end