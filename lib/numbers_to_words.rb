class Fixnum
  define_method(:nw) do

  ones = {
    "0"=> "",
    "1"=> "one",
    "2"=> "two",
    "3"=> "three",
    "4"=> "four",
    "5"=> "five",
    "6"=> "size",
    "7"=> "seven",
    "8"=> "eight",
    "9"=> "nine",
    "10"=> "ten",
    "11"=> "eleven",
    "12"=> "twelve",
    "13"=> "thirteen",
    "14"=> "fourteen",
    "15"=> "fifteen",
    "16"=> "sixteen",
    "17"=> "seventeen",
    "18"=> "eighteen",
    "19"=> "nineteen",
  }

  teens = {
    "10"=> "ten",
    "11"=> "eleven",
    "12"=> "twelve",
    "13"=> "thirteen",
    "14"=> "fourteen",
    "15"=> "fifteen",
    "16"=> "sixteen",
    "17"=> "seventeen",
    "18"=> "eighteen",
    "19"=> "nineteen",
  }


  doubles = {
    "0" => "",
    "20"=> "twenty",
    "30"=> "thirty",
    "40"=> "forty",
    "50"=> "fifty",
    "60"=> "sixty",
    "70"=> "seventy",
    "80"=> "eighty",
    "90"=> "ninety",
  }

  hundreds = {
    "100"=> "one hundred",
    "200"=> "two hundred",
    "300"=> "three hundred",
    "400"=> "four hundred",
    "500"=> "five hundred",
    "600"=> "six hundred",
    "700"=> "seven hundred",
    "800"=> "eight hundred",
    "900"=> "nine hundred",
  }

  final_numbers = []

  i = 0

  if self < 20
    word = ones.fetch(self.to_s())
    final_numbers.push(word)
    puts word
  elsif self == 20 || self == 50 || self == 60 || self == 70 || self == 80 || self == 90
    split_number = self.to_s.split("")
    number = split_number[0].to_i.*(10)
    puts number
    word = doubles.fetch(number.to_s())
    final_numbers.push(word)

  elsif (21..99).include?(self)
    i = 0
    split_number = self.to_s.split("")
    number = split_number[0].to_i.*(10)
    puts number
    word = doubles.fetch(number.to_s())
    final_numbers.push(word)
    i = 1
    number2 = split_number[1].to_i.*(1)
    puts number2
    word2 = ones.fetch(number2.to_s())
    final_numbers.push(word2)

  elsif (100..999).include?(self)
    i = 0

    #hundreds
    split_number = self.to_s.split("")
    number3 = split_number[0].to_i.*(100)
    puts number3
    word3 = hundreds.fetch(number3.to_s())
    final_numbers.push(word3)
    #teens   ----- error here   key not finding 10
    if split_number[1] == 1
      split_number = self.to_s.split("")
      number8 = split_number.slice(1,2).join("")
      word8 = teens.fetch(number8.to_s())
      final_numbers.push(word8)
    #doubles
    else
      split_number = self.to_s.split("")
      number0 = split_number[1].to_i.*(10)
      puts number0
      word0 = doubles.fetch(number0.to_s())
      final_numbers.push(word0)

      #singles
      split_number = self.to_s.split("")
      number5 = split_number[2].to_i.*(1)
      puts number5
      word5 = ones.fetch(number5.to_s())
      final_numbers.push(word5)


end
end # if end
    final_numbers.join(" ")
  end # method end
end #class end
