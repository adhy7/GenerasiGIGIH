require_relative 'villain'

class Hero < Person
    def initialize (name, hitpoint, attack_damage)
        super(name,hitpoint,attack_damage)
        @deflect_percentage = 0.8
    end

    def take_damage(damage)
        if rand < @deflect_percentage
            puts "#{@name} deflects the attack"
        else
            @hitpoint -= damage
        end
    end
end

class MongolArcher < Villain
    def attack(other_person)
        puts "#{@name} shoots an arrow at #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class MongolSpearman < Villain
    def attack(other_person)
        puts "#{@name} thrust #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class MongolSwordsman < Villain
    def attack(other_person)
        puts "#{@name} slashes #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end
