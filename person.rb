class Person
	attr_reader :name,:hitpoint,:attack_damage
	def initialize(name, hitpoint, attack_damage)
		@name = name
		@hitpoint = hitpoint
		@attack_damage = attack_damage
		
	end
	
	def to_s
		"#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} atk"
	end
   
   
   def attack(other_person)
	   other_person.take_damage(@attack_damage)
	   puts "#{name} attacks #{other_person.name} with #{attack_damage} damage" 
   end

   
   
   def take_damage(attack_damage)
	@hitpoint -= attack_damage
   end

   def support(hitpoint)
	@hitpoint += 20
   end

    def heal(other_person)
	other_person.support(@hitpoint)
	end
   
   def die?
		if @hitpoint <= 0
			puts "#{@name} die"
			true
		end
   end
end





