require "./lib/node"
require "./lib/linked_list"
require "./lib/beat_box"
require "rspec"

describe BeatBox do
        it 'can instantiate LinkedList list' do
            bb = BeatBox.new
            expect(bb).to be_a BeatBox
        end

        it 'created a list thats head is empty' do
            bb = BeatBox.new
            expect(bb.list.head). to be_nil
        end

        it 'can append a new string or a node of multiple words' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            expect(bb.list.to_string).to eq("deep doo ditt")
        end

        it 'appended and set the head to only the first part of the multiple word string' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            expect(bb.list.head.data).to eq("deep")
        end

        it 'checks if the head is attached to the next node' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            expect(bb.list.head.next_node.data).to eq("doo")
        end

        it 'can count the nodes and separate them properly' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            bb.append("woo hoo shu")
            expect(bb.list.count).to eq(6)
        end

        it 'can count when only calling bb.count' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            bb.append("woo hoo shu")
            expect(bb.count).to eq(6)
        end

end
