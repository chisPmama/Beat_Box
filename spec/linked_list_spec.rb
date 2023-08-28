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
            
            expect(list.to_string).to eq("doop deep")
        end

        it 'adds another node to the LinkedList' do
            list = LinkedList.new
            list.append('doop')
            list.append('deep')
            
            expect(list.head.next_node).to be_instance_of(Node)
            expect(list.head.next_node.next_node).to be nil
        end
            describe '#count Method' do
                it 'can count the amount of nodes' do
                    list = LinkedList.new
                    list.append('doop')
                    list.append('deep')
                    
                    expect(list.count).to eq(2)
                end
            end

            describe '#prepend method' do
                it 'can prepend a node and replace the head of the LinkedList' do
                list = LinkedList.new
                list.append("plop")
                list.append("suu")
                list.prepend("dop")
              
                expect(list.head.data).to eq('dop')
                end
              end

              describe '#insert method' do
                it 'replace a node in the requested number position with new string argument' do
                  list = LinkedList.new
                  list.append("plop")
                  list.append("suu")
                  list.prepend("dop")
                  list.insert(1,'woo')
              
                  expect(list.to_string).to eq('dop woo plop suu')
                end
              end

              describe '#find method' do
                it 'finds words in ListedLink string using the location position argument and the amount of nodes to return' do
                  list = LinkedList.new
                  list.append("deep")
                  list.append("woo")
                  list.append("shi")
                  list.append("shu")
                  list.append("blop")
              
                  expect(list.to_string).to eq('deep woo shi shu blop')
                  expect(list.find(2, 1)).to eq('shi')
                  expect(list.find(1, 3)).to eq('woo shi shu')
                end
              end

              describe '#include? method' do
                it 'checks if string argument is apart of the LinkedList values already inputted' do
                  list = LinkedList.new
                  list.append("deep")
                  list.append("woo")
                  list.append("shi")
                  list.append("shu")
                  list.append("blop")
              
                  expect(list.includes?('deep')).to be true
                  expect(list.includes?('dep')).to be false
                end
              end

              describe '#pop method' do
                it 'prints and remove last sound' do
                  list = LinkedList.new
                  list.append("deep")
                  list.append("woo")
                  list.append("shi")
                  list.append("shu")
                  list.append("blop")
              
                  expect(list.pop).to eq('blop')
                  expect(list.pop).to eq('shu')
                  expect(list.to_string).to eq('deep woo shi')
                end
            end
    end
end