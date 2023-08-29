require "./lib/node"
require "./lib/linked_list"
require "./lib/beat_box"
require "rspec"

describe BeatBox do
    describe "#Iteration3" do
        xit 'can instantiate LinkedList list' do
            bb = BeatBox.new
            expect(bb).to be_a BeatBox
        end

        xit 'created a list thats head is empty' do
            bb = BeatBox.new
            expect(bb.list.head). to be_nil
        end

        xit 'can append a new string or a node of multiple words' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            expect(bb.list.to_string).to eq("deep doo ditt")
        end

        xit 'appended and set the head to only the first part of the multiple word string' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            expect(bb.list.head.data).to eq("deep")
        end

        xit 'checks if the head is attached to the next node' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            expect(bb.list.head.next_node.data).to eq("doo")
        end

        xit 'can count the nodes and separate them properly' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            bb.append("woo hoo shu")
            expect(bb.list.count).to eq(6)
        end

        xit 'can count when only calling bb.count' do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            bb.append("woo hoo shu")
            expect(bb.count).to eq(6)
        end
    end

end

describe "#Iteration4" do
    it 'can filter and insert multiple word string and properly append' do
        bb = BeatBox.new("deep dop dop deep love")
        expect(bb.all).to eq("deep dop dop deep")
    end

    it "can change the rate" do
        bb = BeatBox.new("deep dop dop deep love")
        bb.rate = 100
        expect(bb.rate).to eq(100)
    end

    it "can change the voice" do
        bb = BeatBox.new("deep dop dop deep love")
        bb.voice = "Daniel"
        expect(bb.voice).to eq("Daniel")
    end

    it "can reset voice and rate" do
        bb = BeatBox.new("deep dop dop deep love")
        bb.voice = "Daniel"
        bb.rate = 100
        bb.reset_rate
        bb.reset_voice
        expect(bb.rate).to eq(500)
        expect(bb.voice).to eq("Boing")
    end
end
