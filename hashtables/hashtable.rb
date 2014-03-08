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


class HashTableHashList

  attr_reader :hash

  def initialize
    @hash = Array.new(10)
  end

  def add_key_value_pair(string_key, int_val)

    resize
    hash_key = string_key.hash % 10

    until @hash[hash_key] == nil || @hash[hash_key] == false
      hash_key = (hash_key + 1) % 10
    end

    @hash[hash_key] = [string_key, int_val]

  end

  def get_value(string_key)
    # returns int
    # @hash.each do |pair|
    #   return pair[1] if pair[0] == string_key
    # end

    hash_key = string_key.hash % @hash.length
    hash_key += 1 until (@hash[hash_key] == nil || @hash[hash_key][0] ==  string_key )
    return nil if @hash[hash_key] == nil

    @hash[hash_key][1]
  end

  def remove_key(string_key)
    # returns int
    # @hash.each do |pair|
    #   return @hash.delete(pair) if pair[0] == string_key
    # end

    hash_key = string_key.hash % @hash.length

    until @hash[hash_key][0] == string_key.hash
      hash_key += 1
    end

    return nil if @hash[hash_key] == nil
    @hash[hash_key][1]

  end

  private

  def resize
    # not optimal
    if @hash.length > @hash.count(nil) * 3
      newhash = []
      10.times { @hash << nil }
    end
  end

end

x = HashTableHashList.new
x.add_key_value_pair("this", 1)
x.add_key_value_pair("iasp", 2)
x.add_key_value_pair("iasp", 3)
x.add_key_value_pair("rfiasp", 4)
x.add_key_value_pair("drfdp", 5)
x.add_key_value_pair("rds", 6)
x.add_key_value_pair("drap", 7)
x.add_key_value_pair("drfap", 8)
x.add_key_value_pair("dp", 9)
x.add_key_value_pair("diap", 10)
x.add_key_value_pair("dfd", 11)
binding.pry
