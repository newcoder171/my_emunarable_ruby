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
    self.my_each do |n|
      if yield n
        selected << n
      end
    end
    selected
  end

  def my_all?
    marker = true
    self.my_each do |n|
      if !yield n
        marker = false
      end
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
    self.my_each do |n|
      if yield n
        marker = false
      end
    end
    marker
  end

  def my_count
    count = 0;
    self.my_each { count += 1}
    count
  end

  def my_map
    self.my_each do |n|

    end
  end

end

[1,2,4,5].my_each_with_index { |n, m| puts "#{m}: #{n}"}
puts [1,2,3,5].my_count