import pdb

class HashTable(object):
  def __init__(self):
    self.hash_table = {}

  def add_key_value_pair(self, string_key, int_val):
    # returns void
    self.hash_table[string_key] = int_val

  def get_value(self, string_key):
    # returns int
    return self.hash_table[string_key]

  def remove_key(self, string_key):
    # do whatever you want
    del self.hash_table[string_key]

# a dictionary is really a list
# keys are hashed to produce indexes


class HashTableList(object):
  def __init__(self):
    self.hash_table = []

  def add_key_value_pair(self, string_key, int_val):
    # returns void
    self.hash_table.append(string_key)
    self.hash_table.append(int_val)

  def get_value(self, string_key):
    # returns int
    return self.hash_table[self.hash_table.index(string_key) + 1]

  def remove_key(self,string_key):
    # returns int
    del self.hash_table[self.hash_table.index(string_key) + 1]
    del self.hash_table[self.hash_table.index(string_key)]



class HashTableSortedList(object):
  def __init__(self):
    self.hash_table = []

  def add_key_value_pair(self, string_key, int_val):
    # returns void
    self.hash_table.append(  (string_key, int_val)  )
    self.hash_table.sort()

  def get_value(self, string_key):
    #returns int
    for pair in self.hash_table:
      if pair[0] == string_key:
        return pair[1]

  def remove_key(self,string_key):
    # returns int
    for pair in self.hash_table:
      if pair[0] == string_key:
        self.hash_table.remove(pair)
        return pair[1]



x = HashTableSortedList()
x.add_key_value_pair('derp', 5)

pdb.set_trace()
