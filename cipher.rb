def casear_cipher(str, num)
  alph = ("a".."z").to_a
  ret = ""
  str.each_char do |chr|
    if /[A-Za-z]/.match(chr)
      if chr == chr.downcase
        ret = ret + alph[(alph.index(chr.downcase) + num) % 26]
      else
        ret = ret + alph[(alph.index(chr.downcase) + num) % 26].upcase
      end
    else
      ret = ret + chr
    end
  end
  puts ret
end

casear_cipher("What a string!", 5)
