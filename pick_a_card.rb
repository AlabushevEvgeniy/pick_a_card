#encoding: UTF-8

# Этот код необходим только при использовании unicode-символов на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

values = %w(2 3 4 5 6 7 8 J Q K A)
suits = %w(♦ ♥ ♣ ♠) #Буби черви крести пики

puts "#{values.sample} of #{suits.sample}"
