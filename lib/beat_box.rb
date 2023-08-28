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


end

# bb = BeatBox.new
# bb.append("deep doo ditt")
# binding.pry