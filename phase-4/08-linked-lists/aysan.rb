# Node Class 

class Node 

    attr_accessor :data, :next_node

    # initialize next_node to nil because we do not know what node this newly created one will be linked to just yet. 
    def initialize(data, next_node = nil)
        @data = data 
        @next_node = next_node
    end


end

# SinglyLinkedList class 

class SinglyLinkedList

    attr_accessor :head
    
    # upon initialization of a linkedlist, we do not have any nodes yet, we are just creating an empty list to start adding to 

    def initialize
      @head = nil
    end

    def add_to_list(node)
        # first check and see if anything even exists in the list
        if !self.head 
            self.head = node 
            return self 
        end

        # start at the head 
        current_node = self.head # head 

        # traverse the linked list until we get to the last node 
        while current_node.next_node 
            current_node = current_node.next_node
        end

        # this means we have reached the end of the linked list and 
        current_node.next_node = node 
    end

    def add_to_beginning(node)
        node.next_node = self.head 
        self.head = node 
    end

    def find(data)
        current_node = self.head
        while current_node
            if current_node.data == data
                return current_node
            end
            current_node = current_node.next_node
        end
        "0 Results"
    end

    def print_list
        current_node = self.head
        while current_node
            puts current_node.data
            current_node = current_node.next_node
        end
    end

    def delete(data)
        current_node = self.head
        if current_node.data == data
            self.head = current_node.next_node
        else
            while current_node.next_node && current_node.next_node.data != data
                if current_node.next_node || current_node.next_node.data == data
                    current_node.next_node = current_node.next_node.next_node
                else
                    current_node = current_node.next_node
                end
            end
            current_node.next_node = current_node.next_node.next_node
        end
    end

end 