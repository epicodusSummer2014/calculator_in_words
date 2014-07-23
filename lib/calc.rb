def calc(string)
  array = string.split
  if array[3] == "plus"
    array[2].to_f + array[4].to_f
  elsif array[3] == "minus"
    array[2].to_f - array[4].to_f
  elsif array[3] == "times"
    array[2].to_f * array[4].to_f
  elsif array[3] == "divided"
    array[2].to_f / array[5].to_f
  elsif array[6] == "power?"
    array[5].slice!(-2..-1)

    array[2].to_f**array[5].to_f

  end
end
puts calc("what is 4 to the 3rd power?")
