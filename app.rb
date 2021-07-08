require_relative 'person'
require_relative 'villain'
require_relative 'hero'

jin = Hero.new("Jin Sakai",100,50)
yuna = Person.new("Yuna",90,45)	
sensei = Person.new("Sensei",80,60)		
mongol_archer = MongolArcher.new("Mongol Archer",80,40)
mongol_spearman = MongolSpearman.new("Mongol Spearman",120,60)
mongol_swordsman = MongolSwordsman.new("Mongol Swordsman",100,50)
villains = [mongol_archer,mongol_spearman,mongol_swordsman]
teams = [yuna,sensei,jin]

i = 1	
until (jin.die? || villains.empty?) do
puts "As jin Sakai, what do you want to do this turn?"
puts "1) attack an enemy"
puts "2) Heal an ally"
choise = gets.chomp() 
puts "\n"
	case choise	
		when "1"
				puts "======================= Turn #{i}====================="
				puts jin
				puts yuna
				puts sensei
				puts "\n"
			
				villains.each do |villain|
					puts villain
				end
				puts "\n"
			
				teams.each do |team|
				team.attack(villains[rand(villains.size)])
				end

				villains.each do |villain|
					villains.delete(villain) if villain.die? || villain.flee?
				end
				puts "\n"

				villains.each do |villain|
					villain.attack(teams[rand(teams.size)])
				end
				puts"\n"
				i += 1	
	
		when "2"	
			puts "Which ally you want to heal"
			puts "1) Yuna"
			puts "2) Sensei"
			heal_ally = gets.chomp()
				if heal_ally == "1"
					jin.heal(yuna)
					puts yuna	
						
						puts "======================= Turn #{i}====================="	
						puts "\n"
					
						villains.each do |villain|
							puts villain
						end
						puts "\n"
					
						teams.each do |team|
						team.attack(villains[rand(villains.size)])
						end
		
						villains.each do |villain|
							villains.delete(villain) if villain.die? || villain.flee?
						end
						puts "\n"
		
						villains.each do |villain|
							villain.attack(teams[rand(teams.size)])
						end
						puts"\n"
						i += 1	
					

				elsif heal_ally == "2"
					jin.heal(sensei)
					puts sensei
					

					
						puts "======================= Turn #{i}====================="	
						puts "\n"
					
						villains.each do |villain|
							puts villain
						end
						puts "\n"
					
						teams.each do |team|
						team.attack(villains[rand(villains.size)])
						end
		
						villains.each do |villain|
							villains.delete(villain) if villain.die? || villain.flee?
						end
						puts "\n"
		
						villains.each do |villain|
							villain.attack(teams[rand(teams.size)])
						end
						puts"\n"
						i += 1	
					
				else
					puts "wrong input"									
		end								
	end
end



	



