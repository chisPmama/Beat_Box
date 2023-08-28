require './lib/linked_list'
# require 'pry'

class BeatBox

    attr_reader :list

    def initialize
        @list = LinkedList.new #Created a new LinkedList that is stored in BeatBox
    end

    def append(data)
        data_split = (data.to_s).split
        data_split.each do |data|
            @list.append(data)
        end
    end

    def count
        list.count
    end

    def play
        beats = list.to_string
        `say -r 500 -v Boing #{beats}` 
    end

end

# bb = BeatBox.new
# bb.append("deep doo ditt")
# binding.pry