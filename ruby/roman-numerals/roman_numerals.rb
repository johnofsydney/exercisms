class Integer
    ROMANS = { 
        "C" => 100, 
        "XC" => 90,
        "L" => 50,
        "XL" => 40,
        "X" => 10,
        "IX" => 9,
        "V" => 5, 
        "IV" => 4,
        "I" => 1
    }


    def to_roman 
        int = self 
        result = ""

        ROMANS.each do |sign, num|
            result << sign * ( int / num )
            int = int % num
        end

        result
    end
end

