def calc(string)
  array = string.split("?")
  final = []

  finalarray = []
  array1 = array[0].split
  finalarray<<array1

  if array.length > 1
    array2 = array[1].split
    finalarray<<array2
  end

  finalarray.each do |x|
    if x[3] == "plus"
      result = x[2].to_f + x[4].to_f
      final<<result
    elsif x[3] == "minus"
      result = x[2].to_f - x[4].to_f
      final<<result
    elsif x[3] == "times"
      result = x[2].to_f * x[4].to_f
      final<<result
    elsif x[3] == "divided"
      result = x[2].to_f / x[5].to_f
      final<<result
    elsif x[6] == "power"
      x[5].slice!(-2..-1)
      result = x[2].to_f**x[5].to_f
      final<<result
    end

    if x[5] == "plus"
      final[0] = final[0] + x[6].to_f
    elsif x[5] == "minus"
      final[0] = final[0] - x[6].to_f
    elsif x[5] == "times"
      final[0] = final[0] * x[6].to_f
    elsif x[5] == "divided"
      final[0] = final[0] / x[7].to_f
    else
      final
    end

  end
  final

end

 puts calc("what is 4 plus 8 plus 6?")
