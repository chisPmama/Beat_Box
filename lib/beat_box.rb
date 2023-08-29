require './lib/linked_list'
# require 'pry'

class BeatBox
    attr_reader :list, :data
    attr_accessor :rate, :voice

# ITERATION IV -- Placed here to create access in def initialize
    def append(data) # mississippi bop dee
        data_split = (data.to_s).split # => data_split = [mississippi, bop, dee]
        accepted_list = "tee dee deep dop bop boop la na".split # => accepted_list = [tee, dee, deep..]
            accepted_data = data_split.find_all do |single_data| #[] of missispii / bop / ee ### Want this to return [bop, dee]
                accepted_list.include?(single_data)
            end
        accepted_data.each do |accepted|
            @list.append(accepted)
        end
    end

    def initialize(data) ## bb = BeatBox.new("luv")
        @list = LinkedList.new #creates a head
        @rate = 500
        @voice = "Boing"
        self.append(data)
    end

    def prepend(data)
        data_split = (data.to_s).split # => data_split = [mississippi, bop, dee]
        accepted_list = "tee dee deep bop boop la na".split # => accepted_list = [tee, dee, deep..]
            accepted_data = data_split.find_all do |single_data| #[] of missispii / bop / ee ### Want this to return [bop, dee]
                accepted_list.include?(single_data)
            end
        accepted_data.each do |accepted|
            @list.prepend(accepted)
        end
    end

    def count
        list.count
    end

    def play
        beats = list.to_string
        `say -r #{@rate.to_s} -v #{@voice} #{beats}` 
    end

    def all
        list.to_string
    end

    def reset_rate
        @rate = 500
    end

    def reset_voice
        @voice = "Boing"
    end
    

end

# bb = BeatBox.new
# bb.append("deep doo ditt")
#   binding.pry