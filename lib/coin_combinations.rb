class Fixnum
  define_method(:change) do
    coins = {25=>"quarter", 10 =>"dime",5 =>"nickel",1 => "penny"}

    total = self
    change = ""

    coins.each() do |amount, coin|
      until total - amount < 0
        change.insert(-1, coin + " ")
        total -= amount
      end
    end
    change
  end
end
