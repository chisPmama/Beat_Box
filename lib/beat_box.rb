require './lib/linked_list'
require 'pry'

class BeatBox
    attr_reader :list, :data

# ITERATION V
    def initialize(data)
        @list = LinkedList.new
         self.append(data)
    end
#  ITERATION III
    # def initialize
    #     @list = LinkedList.new #Created a new LinkedList that is stored in BeatBox
    # end

# ITERATION V
    def append(data) # mississippi
        starter_list = "tee dee deep bop boop la na".split
        verification = ""
        starter_list.each do |accepted_data| # look at each word in the array
            verify = (data.eql? accepted_data).to_s + " " # missisippi != look => false
            verification << verify #stores "false "
        end
        if verification.include? "true"
             data_split = (data.to_s).split
             data_split.each do |data|
                @list.append(data)
             
        end
        end
    end
#  ITERATION III
    # def append(data)
    #     data_split = (data.to_s).split
    #     data_split.each do |data|
    #         @list.append(data)
    #     end
    # end

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
binding.pry