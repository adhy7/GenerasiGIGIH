require_relative 'person'

jin = Person.new("Jin Sakai",100,50)	
puts jin

khotbun = Person.new("khotbun",500,50)
puts khotbun
	puts "==============================================="
loop do
	
	jin.attack(khotbun)
	puts khotbun
	puts "\n"
	break if khotbun.die?
	num = rand(100)
   	if num <= 80
		puts "Jin Sakai deflect khotbun attack, HP #{jin.hitpoint()}"
		puts "\n"
	else
		khotbun.attack(jin)
		puts jin
	break if jin.die?
	
	end	
	
end
puts "==============================================="




