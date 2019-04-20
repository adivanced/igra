class Player
	attr_accessor :player_hp, :player_mana, :player_strength, :player_dexility, :player_intellect, :player_vitality, :player_weapon, :player_clothing, :player_inventory, :player_gold, :player_dyn_hp, :player_dyn_mana
	def initialize(player_hp, player_mana, player_strength, player_dexility, player_intellect, player_vitality, player_weapon, player_clothing, player_inventory, player_gold, player_dyn_hp, player_dyn_mana)
		@player_hp=player_hp 
		@player_mana=player_mana
		@player_strength=player_strength
		@player_dexility=player_dexility
		@player_intellect=player_intellect
		@player_vitality=player_vitality
		@player_weapon = player_weapon
		@player_clothing = player_clothing
		@player_inventory = player_inventory
		@player_gold=player_gold
	        @player_dyn_hp = player_dyn_hp
		@player_dyn_mana = player_dyn_mana
	end
end
class Clothingitem	
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :is_usable, :clothes_protection
	def initialize(item_description, item_name, item_price, item_inv_nbr, is_usable, clothes_protection)
		@item_description = item_description
		@item_name = item_name
	        @item_price = item_price
	        @item_inv_nbr = item_inv_nbr
	        @is_usable = is_usable
		@clothes_protection = clothes_protection
	      
	end
end

class Item
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :is_usable
	def initialize(item_description, item_name, item_price, item_inv_nbr, is_usable)
		@item_description = item_description
		@item_name = item_name
	        @item_price = item_price
	        @item_inv_nbr = item_inv_nbr
	        @is_usable = is_usable
		end
end


class Healingitem
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :item_heal, :is_usable
	def initialize(item_description, item_name, item_price, item_inv_nbr, item_heal, is_usable)
		@item_description = item_description
		@item_name = item_name
	        @item_price = item_price
	        @item_inv_nbr = item_inv_nbr
		@item_heal = item_heal
		@is_usable = is_usable
	end
end

class Weaponitem
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :is_usable, :weapon_damage, :dex_scale, :strength_scale
	def initialize(item_description, item_name, item_price, item_inv_nbr, is_usable, weapon_damage, dex_scale, strength_scale)
                @item_description = item_description
		@item_name = item_name
	        @item_price = item_price
	        @item_inv_nbr = item_inv_nbr
	        @is_usable = is_usable
		@weapon_damage = weapon_damage
		@dex_scale = dex_scale
		@strength_scale = strength_scale
	end
end

@barefists = Weaponitem.new('bare fists, lol, why would you try to see its description?', "bare fists", "refuse", 'lol',  "what?", 0, "F", "F")
@barebody = Clothingitem.new('bare body, lol', "bare body", "refuse", 'lol', "what?", 0) 


@iron_straight_sword = Weaponitem.new( 'simple straight sword, made of iron. deals 23 0f damage. costs 50 of gold', "iron straight sword", 50, 4, "equipable as weapon", 23, "D", "D")
@iron_great_sword = Weaponitem.new('not every human can use this giant sword. made of iron. deals 46 of damage, costs 75 of gold', "iron great sword", 75, 5, "equipable as weapon", 46, "E", "B")
@iron_mace = Weaponitem.new('mace, made of iron. perfect balance between damage and speed. deals 30 of damage. costs 65 of gold' ,"iron mace", 65, 6, "equipable as weapon", 30, "D", "C")
@iron_dagger = Weaponitem.new('dagger, perfect fo stabbing someone in the back. made of iron. deals 15 of damage, costs 40 of gold', "iron dagger", 40, 7, "equipable as weapon", 15, "B", "E") 


@player_weapon = 0
@player_clothing = 0 


@thief_clothing = Clothingitem.new("clothes, worn by thiefs. has a bad protection(15), but ideal for sneaking, costs nothing. no one will agree to buy it", "thief_clothing", "refuse", 8, "equipable as clothing", 15)   
@knight_armour = Clothingitem.new("armor, worn by knights. really heavy, but has  a giant amount of protection(50)", "knight armour", 250, 9, "equipable as clothing", 50)
@magician_robe = Clothingitem.new("robe, worn by magicians. aufull protection(10), costs 300 of gold", "magician robe", 300, 10, "equipable as clothing", 10)
@bounty_hunter_clothing = Clothingitem.new("skilled bounty hunters wear this clothes.has a balanced protection(25), costs 150 of gold", "bounty hunter clothing", 150, 11, "equipable as clothing", 25)


@healing_pills = Healingitem.new('magic pills, that produce energy, which helps travellers in their journey. regenerates 25 hp, cost 50 of gold', 'healing pills', 50, 0, 25, "yes") 
@gold_nugget = Item.new('a gold nugget. have no idea why would you need it. but it ... shines ...and... its made of gold. costs 400 of gold', 'gold nugget', 400, 1, "no")  
@masterkey = Item.new(' good old masterkey.be careful with it. for using this simple thing for too much, you may be inprisoned!, costs 10 of gold', 'masterkey', 10, 2, "no")
@loaf_of_bread = Healingitem.new('a freshly bake... an old and hard loaf of bread. you must be starving, if you decided to eat it.regens 5 hp. costs 5 of gold' , 'loaf of bread', 5, 3, 5, "yes") 


@stats = 20
def create_new_player
	puts 'hello, traveller!'
	puts 'its time for you to create your hero!'
	puts 'first you need to distribute your heroes stats'
	puts 'the summary of your stats has to be 20'
	puts "stats left:#{@stats}"
	print 'vitality: ' 
	@player_vitality = gets.to_i
	@a=100 + @player_vitality * 4
	@stats = @stats - @player_vitality
	puts "stats left: #{@stats}"
	print 'strength: '
	@player_strength = gets.to_i
	@stats = @stats - @player_strength
	puts "stats left #{@stats} "
	print 'intellect: '
	@player_intellect = gets.to_i
	@b=50 + @player_intellect * 4
	@stats = @stats - @player_intellect
	puts "stats left #{@stats}"
	print 'dexility: '
	@player_dexility = gets.to_i
	@stats = @stats - @player_dexility
	puts "done! Here are your stats: "  
	puts "hp = #{@a}"
	puts "mana = #{@b}"
	puts "vitality = #{@player_vitality}"
	puts "intellect = #{@player_intellect}"
	puts "strength = #{@player_strength}"
	puts " dexility = #{@player_dexility}"
	puts "now its time for you to pick your equipment!"


end

def pick_clothing
	puts 'here are our clothings : knight armor(50)(insert 1), thief clothing(15)(insert 2), magician robe(10)(insert 3), bounty hunters clothing(25)(insert 4)'
	puts "wich one you choose? #{@chose = gets.to_i}"
	if @chose == 1
		@player_clothing = @knight_armour
	end	
	if @chose == 2 
		@palyer_clothing = @thief_clothing	
	end 
	if @chose == 3 
		@player_clothing = @magician_robe
	end
	if @chose == 4
		@player_clothing = @bounty_hunter_clothing
	end
	puts "#{@player_clothing.item_name} is your choise"

end

def pick_weapon
	puts 'now pick a weapon : iron straight sword(23)(insert 1), iron great sword(46)(insert 2), iron mace(30)(insert 3), iron dagger(15)(insert 4) '
	puts "what is your choise? #{@chose2=gets.to_i}"
	if @chose2 == 1
		@player_weapon = @iron_straight_sword
	end	  
	if @chose2 == 2
                @player_weapon = @iron_great_sword
	end
	if @chose2 == 3
	        @player_weapon = @iron_mace
	end
	if @chose2 == 4
                @player_weapon = @iron_dagger
	end
	puts "#{@player_weapon.item_name} is your choise"

end

def pick_items
@player_gold = 1000
@inventory = []
x=1
puts "what would you like to see in yor bag? you have #{@player_gold} gold (0 to exit)"


100.times do 
@inventory << {}
end

@inventory[@healing_pills.item_inv_nbr][@healing_pills] = 0
@inventory[@loaf_of_bread.item_inv_nbr][@loaf_of_bread] = 0
@inventory[@masterkey.item_inv_nbr][@masterkey] = 0
@inventory[@gold_nugget.item_inv_nbr][@gold_nugget] = 0
@inventory[@iron_straight_sword.item_inv_nbr][@iron_straight_sword] = 0
@inventory[@iron_great_sword.item_inv_nbr][@iron_great_sword] = 0
@inventory[@iron_mace.item_inv_nbr][@iron_mace] = 0
@inventory[@iron_dagger.item_inv_nbr][@iron_dagger] = 0
@inventory[@thief_clothing.item_inv_nbr][@thief_clothing] = 0
@inventory[@knight_armour.item_inv_nbr][@knight_armour] = 0
@inventory[@magician_robe.item_inv_nbr][@magician_robe] = 0
@inventory[@bounty_hunter_clothing.item_inv_nbr][@bounty_hunter_clothing] = 0

puts 'healing pills(costs 50 of gold)   (insert 1)'
puts 'loaf of bread(costs 5 of gold)   (insert 2)'
puts 'masterkey (cost 10 of gold)      (insert 3)'
puts 'gold nugget(costs 400 of gold) (insert 4)'
puts "money left: #{@player_gold}"


while x > 0  and @player_gold > 0 do

#h.each {|k, v| h[k] = v * 2 }  !!!!    
x=gets.to_i

if x == 1
	@inventory[@healing_pills.item_inv_nbr][@healing_pills] +=  1
	@player_gold = @player_gold - @healing_pills.item_price
#	puts "#{@inventory[@healing_pills.item_inv_nbr][@healing_pills]}"
end 
if x == 2
	@inventory[@loaf_of_bread.item_inv_nbr][@loaf_of_bread] = @inventory[@loaf_of_bread.item_inv_nbr][@loaf_of_bread] + 1
	@player_gold = @player_gold - @loaf_of_bread.item_price
#	puts "#{@inventory[@loaf_of_bread.item_inv_nbr][@loaf_of_bread]}"
end 
if x == 3                   
	@inventory[@masterkey.item_inv_nbr][@masterkey] += 1
	@player_gold = @player_gold - @masterkey.item_price
end
if x == 4
	@inventory[@gold_nugget.item_inv_nbr][@gold_nugget] += 1
	@player_gold = @player_gold - @gold_nugget.item_price
end
puts "money left:#{@player_gold}"
end
if @player_gold < 0
	@player_gold = 0
end 

end


create_new_player
pick_clothing
pick_weapon
pick_items


@player = Player.new(@a, @b, @player_strength, @player_dexility, @player_intellect, @player_vitality, @player_weapon, @player_clothing, @inventory, @player_gold, @a, @b)  

def show_inventory
	puts 'YOUR INVENTORY'
	@player.player_inventory.each do |smth|
		smth.keys.each do |diff|
			if smth != {} and smth[diff] != 0 and smth[diff] != @player.player_clothing and smth[diff] != @player.player_weapon
				puts "#{diff.item_name} X#{smth[diff]},  is usable? = #{diff.is_usable}"
				namnot = diff.item_name
			end	
		        if @player.player_weapon != @barefists
				if smth != {} && diff.item_name == @player_weapon.item_name
					puts "#{diff.item_name} X#{smth[diff].to_i + 1},  is usable? = #{diff.is_usable}"
				end
			end
			if @player.player_clothing != @barebody
				if smth != {} && diff.item_name == @player_clothing.item_name
					puts "#{diff.item_name} X#{smth[diff].to_i + 1},  is usable? = #{diff.is_usable}"
				end
			end	
		end
	end
	puts "you also have #{@player.player_gold} of gold"
		
end

def show_equipment
	puts 'YOUR EQUIPMENTS:'
	if @player.player_weapon != @barefists
		puts "weapon: #{@player.player_weapon.item_name}"
	else puts "weapon: #{@player.player_weapon.item_name}"
	end
	if @player.player_clothing != @barebody
		puts "clothing: #{@player.player_clothing.item_name} "
	else puts "clothing: #{@player.player_clothing.item_name}"
	end
end

def show_stats
	puts 'YOUR STATS:'
	puts "hp =  #{@player.player_dyn_hp}/#{@player.player_hp}"
	puts "mana =  #{@player.player_dyn_mana}/#{@player.player_mana}"
	puts "vitality = #{@player.player_vitality}"
	puts "intellect = #{@player.player_intellect}"
	puts "strength = #{@player.player_strength}"
	puts "dexility = #{@player.player_dexility}"
end

def show_everything
show_stats
show_equipment
show_inventory

end

def show_item_description
	print 'insert an itemname :  '
			itemname = gets.chomp 
			@player.player_inventory.each do |smth|		
			        smth.keys.each do |key|
					if smth != {} and smth[key] != 0
					
						if key.item_name == itemname and @player.player_weapon.item_name != itemname and     @player.player_clothing.item_name != itemname  							#puts "#{smth[0].item_name}"
								puts "#{key.item_description}"            
						end
											end

				end
				

						


			end
	if  itemname == @player.player_weapon.item_name 
		puts "#{@player.player_weapon.item_description}"
	end
	if @player.player_clothing.item_name == itemname
		puts "#{@player.player_clothing.item_description}"
	end							
			
end

def drop_item 
	print 'insert an itemname :  '
	itemname = gets.chomp
        @player.player_inventory.each do |smth|		
			if smth != {} 	
				smth.keys.each do |diff|	


					if diff.item_name == itemname
						                        
								print 'how many?:  '
								amount = gets.to_i
                                                                if amount < smth[diff]
									smth[diff] -= amount
                                                                        puts "deleted!"

								else puts "you dont have this much!"
								end
							break
					end
				end

			end

         end
	 
end

def unequip_weapon
	print 'insert a weapon name:  '
	itemname = gets.chomp
	@player.player_inventory.each do |smth|
		if smth != {}
			smth.keys.each do |diff|
				if diff.item_name == itemname
					if @player.player_weapon.item_name == itemname
						@player.player_weapon = @barefists 
						smth[diff] += 1
				                puts 'unequiped!!!'
					end
				end


			end

		end
	end
end


def equip_weapon
	print 'insert an weapon name:  '
	itemname = gets.chomp
	@player.player_inventory. each do |smth|
		if smth != {}
			smth.keys.each do |diff|
				if smth[diff] != 0 and diff.item_name == itemname
					@player.player_weapon = diff
					smth[diff] -= 1
					puts 'equiped!!!'
				end
			end
		end
	end
end

def unequip_clothing
	print 'insert a clothes name:  '
	itemname = gets.chomp
	@player.player_inventory.each do |smth|
		if smth != {}
			smth.keys.each do |diff|
				if diff.item_name == itemname
					if @player.player_clothing.item_name == itemname
						@player.player_clothing = @barebody 
						smth[diff] += 1
				                puts 'unequiped!!!'
					end
				end


			end

		end
	end
end


def equip_clothing
	print 'insert an clothes name:  '
	itemname = gets.chomp
	@player.player_inventory. each do |smth|
		if smth != {}
			smth.keys.each do |diff|
				if smth[diff] != 0 and diff.item_name == itemname
					@player.player_clothing = diff
					smth[diff] -= 1
					puts 'equiped!!!'
				end
			end
		end
	end
end


def show_commands
puts"====================================================================================================================================="
puts "ALL COMMANDS IN OUR GAME:                                                                                                          |" 
puts "commands => show all commands                                                                                                      |" 
puts "show stats => show player stats                                                                                                    |"
puts "show equipment => show player equipment                                                                                            |"
puts "show inventory => show your gold & inventory                                                                                       |"
puts "show everything => show stats, inventory, equipment                                                                                |"
puts "description => insert itemname = > show item description                                                                           |"
puts "exit the game => leave the game(no saves(at least yet))                                                                            |"
puts "drop item => insert item name and item amount => item is deleted from inventory !!!!! weapon or clothes unequip if want drop !!!!  |"
puts "unequip weapon => insert weapon name => unequips weapon                                                                            |"
puts "equip weapon => insert weapon name => equips weapon                                                                                |"
puts "equip clothes => insert clothes name => equips clothing                                                                            |"
puts "unequip clothes => insert clothes name => unequips clothing                                                                        |"
puts"====================================================================================================================================="
end

show_commands


while true 

	@console = gets.chomp
	if @console == "commands"
		show_commands
	end
	if @console == "show stats"
		show_stats
	end
	if @console == "show equipment"
		show_equipment
	end
	if @console == "show inventory"
		show_inventory
	end
	if @console == "show everything"
		show_everything
	end
	if @console == "description"
		show_item_description	
	end
	if @console == "exit the game"
		break
	end
	if @console == "drop item"
		drop_item
	end
	if @console == "unequip weapon"
		unequip_weapon
	end
	if @console == "equip weapon"
		equip_weapon
	end
	if @console == "equip clothes"
		equip_clothing
	end
	if  @console == "unequip clothes"
		unequip_clothing
	end
end



