class Node

  include comparable

  attr_accessor :data, :left_child, :right_child

  def initialize
    @data = data
    @left_child = nil
    @right_child = nil
  end

end

class Tree

  attr_accessor :empty_array, :root

  def initialize
    @empty_array = []
    @root = nil
  end

  def build_tree(input_array)
    #sort the list
    sorted_array = input_array.sort
    #remove dups
    uniq_array = sorted_array.uniq
    #make each number a new node object
    n = uniq_array.length
    n.times do |i|
      new_node = Node.new
      new_node.data = i
      if self.root == nil
        self.root = new_node.data
      elsif


    #turn it into a balance binary tree 

    #GOAL: return initial or level-0 root node
  end

end