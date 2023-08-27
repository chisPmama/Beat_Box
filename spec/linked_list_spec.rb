require "./lib/node"
require "./lib/linked_list"
require "rspec"

describe LinkedList do
    describe '#SingleNode' do
        it 'is an instance of LinkedList' do
            list = LinkedList.new
            expect(list).to be_a LinkedList
        end

        it 'has a head that is empty' do
            list = LinkedList.new
            expect(list.head). to be_nil
        end

        it 'can append a new node' do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.data).to eq("doop")
        end

        it 'can count nodes' do
            list = LinkedList.new
            list.append("doop")
            expect(list.count).to eq(1)
        end

        it 'can return_a_string' do
            list = LinkedList.new
            list.append("doop")
            expect(list.to_string).to eq("doop")
        end
    end
    describe '#MultipleNodes' do
        it 'can append a second node after the head' do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")
            expect(list.head.next_node).to eq("deep")
        end

        xit 'has a head that is empty' do
            list = LinkedList.new
            expect(list.head). to be_nil
        end

        xit 'can append a new node' do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.data).to eq("doop")
        end

        xit 'can count nodes' do
            list = LinkedList.new
            list.append("doop")
            expect(list.count).to eq(1)
        end

        xit 'can return_a_string' do
            list = LinkedList.new
            list.append("doop")
            expect(list.to_string).to eq("doop")
        end
    end
end