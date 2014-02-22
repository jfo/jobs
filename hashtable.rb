require 'pry'

class HashTable

  def initialize
    @hash = Hash.new
  end

  def add_key_value_pair(string_key, int_val)
    # returns void
    @hash[string_key] = int_val
  end

  def get_value(string_key)
    # returns int
    @hash[string_key]
  end

  def remove_key(string_key)
    # returns int
    @hash.delete(string_key)
    # is this how to "void" a method?
    return nil
  end

end





class HashTableList

  def initialize
    @hash = []
  end

  def add_key_value_pair(string_key, int_val)
    # returns void
    @hash << string_key
    @hash << int_val
  end

  def get_value(string_key)
    # returns int
    @hash[(@hash.index(string_key) + 1)]
  end

  def remove_key(string_key)
    # returns int
    @hash.delete_at(@hash.index(string_key) + 1)
    @hash.delete_at(@hash.index(string_key))
  end

end






class HashTableSortedList

  def initialize
    @hash = []
  end

  def add_key_value_pair(string_key, int_val)
    # returns void
    @hash << [string_key, int_val]
    @hash.sort!
  end

  def get_value(string_key)
    # returns int
    @hash.each do |pair|
      return pair[1] if pair[0] == string_key
    end
  end

  def remove_key(string_key)
    # returns int
    @hash.each do |pair|
      return @hash.delete(pair) if pair[0] == string_key
    end
  end

end

binding.pry
