class Node

  include comparable

  attr_accessor :data, :left_child, :right_child

  def initialize
    @data = data
    @left_child = left_child
    @right_child = right_child
  end

end

class Tree

  attr_accessor :empty_array, :root

  def initialize
    @empty_array = []
    @root = build_tree
  end

  def build_tree(input_array)
    #sort the list
    #remove dups
    #make each number a new node object

    #GOAL: return initial or level-0 root node
  end

end