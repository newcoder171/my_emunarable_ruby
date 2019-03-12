module Enumerable
  def my_each
    iarray = self
    i=0
    while i < iarray.length
      yield iarray[i]
      i+=1
    end
  end

  def my_each_with_index
    iarray = self
    i=0
    while i < iarray.length
      yield iarray[i], i
      i+=1
    end
  end

  def my_select
    selected = []
    my_each do |n|
      if yield n
        selected << n
      end
    end
    selected
  end

  def my_all?
    marker = true
    my_each do |n|
      marker = false unless yield n
    end
    marker
  end

  def my_any?
    marker = false
    self.my_each do |n|
      if yield n
        marker = true
      end
    end
    marker
  end

  def my_none?
    marker = true
    my_each do |n|
      unless !yield n
        marker = false
      end
    end
    marker
  end

  def my_count
    count = 0
    my_each { count += 1}
    count
  end

  def my_map
    new_item = []
    my_each do |n|
      new_item.push(yield n)
    end
    new_item
  end

end