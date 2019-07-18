require ('pry')

class Prime
 attr_accessor(:arr)
  def initialize(number)
    @@number = number
    @@arr = *(1..number)
   end

   def sifting
   (2..@@number).each do |prime|
    @@arr = @@arr.reject {|i| (i/prime>1) & (i% prime ==0)}
    end
    @@arr
   end

 end

prime = Prime.new(99)
prime.sifting
# prime.arr
