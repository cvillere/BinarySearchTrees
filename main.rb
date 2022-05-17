class Node

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

  def build_tree(input_array, start, finish)
    sorted_array = input_array.sort
    uniq_array = sorted_array.uniq
    return nil if start > finish
    mid = (start + finish) / 2
    root = Node.new
    root.data = uniq_array[mid]
    root.left_child = build_tree(input_array, start, mid - 1)
    root.right_child = build_tree(input_array, mid + 1, finish)
    return root
  end

  def insert(root, key)
    if root == nil
      root = Node.new
      root.data = key
    elsif root.data == key
      return root
    elsif root.val < key
      root.right_child = insert(root.right_child, key)
    else
      root.left_child = insert(right.left_child, key)
    end
  end

=begin
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
      if @root == nil
        @root = new_node.data
      elsif @root.data > new_node.data
        @root.right = new_node
      else
        @root.left = new_node
      end
    end
    @root
  end
    #turn it into a balance binary tree 
    #GOAL: return initial or level-0 root node
=end

end