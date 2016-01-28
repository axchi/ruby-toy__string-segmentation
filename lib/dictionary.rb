class Dictionary
 
  DATA = ['table', 'chair', 'desk', 'window', 'door']

  def valid_word?(word)
     DATA.include?(word)
  end
  
  def output_valid(*words)
    words.select{|word| valid_word?(word)==true}
  end
    
  def string(str)  
    a =[]
    DATA.select{|word| 
      a << str.scan(word).uniq} 
     return a.flatten
    
  end
    
end

puts test = Dictionary.new
puts test.output_valid('chair', 'desk', 'blah')

puts "______*______"
puts test.string("iouchair99window897wind")


