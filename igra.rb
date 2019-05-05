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
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :item_heal, :is_usable, :what_heals
	def initialize(item_description, item_name, item_price, item_inv_nbr, item_heal, is_usable, what_heals)
		@item_description = item_description
		@item_name = item_name
	  @item_price = item_price
	  @item_inv_nbr = item_inv_nbr
		@item_heal = item_heal
		@is_usable = is_usable
		@what_heals = what_heals
	end
end


class Weaponitem
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :is_usable, :weapon_damage, :dex_scale, :strength_scale, :cif_dex_scale, :cif_strength_scale
	def initialize(item_description, item_name, item_price, item_inv_nbr, is_usable, weapon_damage, dex_scale, strength_scale, cif_dex_scale, cif_strength_scale)
    @item_description = item_description
		@item_name = item_name
	  @item_price = item_price
	  @item_inv_nbr = item_inv_nbr
	  @is_usable = is_usable
		@weapon_damage = weapon_damage
		@dex_scale = dex_scale
		@strength_scale = strength_scale
		@cif_dex_scale = cif_dex_scale
		@cif_strength_scale = cif_strength_scale		
	end
end

class Enemy
	attr_accessor :enemy_type, :enemy_weapon, :enemy_clothing, :enemy_name, :enemy_hp, :enemy_dyn_hp, :enemy_mana, :enemy_dyn_mana, :enemy_dexility, :enemy_strength, :enemy_gold, :enemy_loot
		def initialize(enemy_type, enemy_weapon, enemy_clothing, enemy_name, enemy_hp, enemy_dyn_hp, enemy_mana, enemy_dyn_mana, enemy_dexility, enemy_strength, enemy_gold, enemy_loot)
			@enemy_type = enemy_type
			@enemy_weapon = enemy_weapon
			@enemy_clothing = enemy_clothing
			@enemy_name = enemy_name
			@enemy_hp = enemy_hp
			@enemy_dyn_hp = enemy_dyn_hp
			@enemy_mana = enemy_mana
			@enemy_dyn_mana = enemy_dyn_mana
			@enemy_dexility = enemy_dexility
			@enemy_strength = enemy_strength
			@enemy_gold = enemy_gold
			@enemy_loot = enemy_loot
		end
end


class Location
	attr_accessor :location_description, :playerhere, :location_name, :location_places 
	def initialize(location_description, playerhere, location_name, location_places)
		@location_description = location_description
		@playerhere = playerhere
		@location_name = location_name
		@location_places = location_places
	end
end

class Place
	attr_accessor :place_name, :place_description, :place_items, :place_enemies, :place_go_out, :playerhere
	def initialize(place_name, place_description, place_items, place_enemies, place_go_out, playerhere)
		@place_name = place_name
		@place_description = place_description
		@place_items = place_items
		@place_enemies = place_enemies
		@place_go_out = place_go_out
		@playerhere = playerhere
	end
end



@barefists = Weaponitem.new('bare fists, lol, why would you try to see its description?', "bare fists", "refuse", 'lol',  "what?", 0, "F", "F", 0, 0)
@barebody = Clothingitem.new('bare body, lol', "bare body", "refuse", 'lol', "what?", 0) 


@iron_straight_sword = Weaponitem.new( 'simple straight sword, made of iron. deals 23 0f damage. costs 50 of gold', "iron straight sword", 50, 4, "equipable as weapon", 23, "D", "D", 2, 2)
@iron_great_sword = Weaponitem.new('not every human can use this giant sword. made of iron. deals 46 of damage, costs 75 of gold', "iron great sword", 75, 5, "equipable as weapon", 46, "E", "B", 4, 1)
@iron_mace = Weaponitem.new('mace, made of iron. perfect balance between damage and speed. deals 30 of damage. costs 65 of gold' ,"iron mace", 65, 6, "equipable as weapon", 30, "D", "C", 2, 3)
@iron_dagger = Weaponitem.new('dagger, perfect fo stabbing someone in the back. made of iron. deals 15 of damage, costs 40 of gold', "iron dagger", 40, 7, "equipable as weapon", 15, "B", "E", 4, 1) 


@player_weapon = 0
@player_clothing = 0 


@thief_clothing = Clothingitem.new("clothes, worn by thiefs. has a bad protection(15), but good for sneak. no one will buy it", "thief clothing", "refuse", 8, "equipable as clothing", 15)
@knight_armour = Clothingitem.new("armor, worn by knights. really heavy, but has  a giant amount of protection(50)", "knight armour", 250, 9, "equipable as clothing", 50)
@magician_robe = Clothingitem.new("robe, worn by magicians. aufull protection(10), costs 300 of gold", "magician robe", 300, 10, "equipable as clothing", 10)
@bounty_hunter_clothing = Clothingitem.new("skilled bounty hunters wear this clothes.has a balanced protection(25), costs 150 of gold", "bounty hunter clothing", 150, 11, "equipable as clothing", 25)


@healing_pills = Healingitem.new('magic pills, that produce energy, which helps travellers in their journey. regenerates 25 hp, cost 50 of gold', 'healing pills', 50, 0, 25, "yes", "hp") 
@gold_nugget = Item.new('a gold nugget. have no idea why would you need it. but it ... shines ...and... its made of gold. costs 400 of gold', 'gold nugget', 400, 1, "no")  
@masterkey = Item.new(' good old masterkey.be careful with it. for using this simple thing for too much, you may be inprisoned!, costs 10 of gold', 'masterkey', 10, 2, "no")
@loaf_of_bread = Healingitem.new('a freshly bake... an old and hard loaf of bread. you must be starving, if you decided to eat it.regens 5 hp. costs 5 of gold' , 'loaf of bread', 5, 3, 5, "yes", "hp") 
@twilight_powder = Healingitem.new('a powder, made of flowers, collected at the special time, during the ywilights. restores 15 mana points, costs 50 of gold', 'twilight powder', 50, 12, 15, 'yes', 'mana')


@camper_thief = Enemy.new("human", @iron_dagger, @thief_clothing, "Garret the mean thief", 130, 130, 60, 60, 6, 5, 125, [{@iron_dagger => 1}, {@thief_clothing => 1}, {@healing_pills => 2}])



@vortex_peak_enter = Place.new("vortex peak enter", " an edge of a cliff. really beautiful sight out from here. you can see somethi... No. too far to see anything.", [{@healing_pills => 2}], [], false, false)
@vortex_peak_exit = Place.new("vortex peak exit", "a tunnel, wich goes into a cave. a bit dark ot in it", [], [], true, false)
@giant_rock = Place.new("giant rock", "a giant rock, behind wich is really easy to hide. a lot of skeletons lay behind it.", [], [@camper_thief], false, false)


@vortex_peak = Location.new("an antient mysterious peak, out of where, by some reason, strangers  sometimes go out of. strangers who dont remember anything about who are they orr why are they here...", false, "vortex peak", [@vortex_peak_enter, @vortex_peak_exit, @giant_rock])










@locations = [@vortex_peak]




def create_new_player
	@stats = 20
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
		@player_clothing = @thief_clothing	
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
	@inventory[@twilight_powder.item_inv_nbr][@twilight_powder] = 0

	puts 'healing pills(costs 50 of gold)   (insert 1)'
	puts 'loaf of bread(costs 5 of gold)   (insert 2)'
	puts 'masterkey (cost 10 of gold)      (insert 3)'
	puts 'gold nugget(costs 400 of gold) (insert 4)'
	puts 'twilight powder (costs 50 of gold) (insert 5)'
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

		if x == 5
			@inventory[@twilight_powder.item_inv_nbr][@twilight_powder] += 1
			@player_gold = @player_gold - @twilight_powder.item_price
		end


		puts "money left:#{@player_gold}"
	end
	if @player_gold < 0
		@player_gold = 0
	end 
end





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
	else
	  puts "weapon: #{@player.player_weapon.item_name}"
	end

	if @player.player_clothing != @barebody
		puts "clothing: #{@player.player_clothing.item_name} "
	else 
		puts "clothing: #{@player.player_clothing.item_name}"
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
				if key.item_name == itemname and @player.player_weapon.item_name != itemname and @player.player_clothing.item_name != itemname
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
       		if amount <= smth[diff]
						smth[diff] -= amount
	 					puts "deleted!"
					else 
						puts "you dont have this much!"
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

def location_show
	can = "NO"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	@locations.each do |smth|																																														
		if smth.playerhere == true 																																																		 																																																												
			smth.location_places.each do |diff|                                                                           
				if diff.playerhere == true                                                                                       
					puts "LOCATION : |#{smth.location_name}|, PLACE : |#{diff.place_name}|"
					diff.place_items.each do |hh|
						hh.keys.each do |key|
							if hh[key] != 0 and diff.place_items != []
								can = "YES"
							else 
								can = "NO"
							end
						end
					end
					puts "can here be found any items? #{can}"	
				end 																																																			
			end 																																																						
		end 																																																								
	end

	@locations.each do |smth|																																																	
		if smth.playerhere == true
			puts "you can also go to this places:"																																													
			smth.location_places.each do |diff|																																								
				if diff.playerhere == false																																														
					puts "|#{diff.place_name}| "                                                                        	
				end
			end
		end
	end	
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
end

def battle
	@deaded = 0
	@locations.each do |smth| 
		if smth.playerhere == true
			smth.location_places.each do |diff|
				if diff.playerhere == true
					if diff.place_enemies != []
						print "here who waits you!"
						diff.place_enemies.each do |enemy|
							puts "#{enemy.enemy_name}"
						end
						diff.place_enemies.each do |enemy|
							puts "#{enemy.enemy_name}  is ready for a battle!"
							@enemy = enemy
							print "do you want to fight him or you want run away (1 or 2)   "
							answer = gets.to_i
							rnd = rand(0..100)
							if answer == 2 and rnd <= 35
								go_to
							end
							if rnd > 35 or answer == 1
								puts "_________________________________________________________________"
								puts "here starts the battle!      you  VS  #{enemy.enemy_name}"  
								puts "player stats:  hp: #{@player.player_dyn_hp}/#{@player.player_hp}, mana: #{@player.player_dyn_mana}/#{@player.player_mana}   |     #{enemy.enemy_name} stats:  hp: #{enemy.enemy_dyn_hp}/#{enemy.enemy_hp}     mana:   #{enemy.enemy_dyn_mana}/#{enemy.enemy_mana} "   
								while enemy.enemy_dyn_hp > 0 and @player.player_dyn_hp > 0		
									consolka = gets.chomp
									if consolka == "show commands"
										show_battle_commands
									end
									if consolka == "show everything"
										show_battle_everything
									end
									if consolka == "equip weapon"
										equip_weapon
									end
									if consolka == "unequip weapon"
										unequip_weapon
									end
									if consolka == "equip clothes"
										equip_clothing
									end
									if consolka == "unequip clothes"
										unequip_clothing
									end
									if consolka == "show inventory"
										show_battle_inventory
									end
									if consolka == "show stats"
										show_battle_stats
									end
									if consolka == "attack"
										enemy.enemy_dyn_hp -= (@player.player_weapon.weapon_damage +  @player.player_weapon.weapon_damage * @player.player_weapon.cif_strength_scale * 0.1 + @player.player_weapon.weapon_damage * @player.player_weapon.cif_dex_scale * 0.1) 
										@player.player_dyn_hp -= enemy.enemy_weapon.weapon_damage
										sleep  0.5
										show_battle_stats
										if enemy.enemy_dyn_hp <= 0
											diff.place_enemies.shift
										end


										if @deaded == "YOU ARE DEAD"
											break
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	puts "_________________________________________________________________"
end


			
					



#puts(@player.player_strength)

def show_battle_commands
	puts"=============================================================================================="
	puts "show commands => show all commands avalible in a battle"
	puts "show everything => show stats, inventory, equipment"
	puts "equip weapon => insert weapon name => equips weapon"
	puts "unequip weapon => insert weapon name => unequips weapon"
	puts "equip clothes => insert clothes name => equips clothing    "
	puts "unequip clothes => insert clothes name => unequips clothing"
	puts "show inventory => show your gold & inventory"
	puts "to show stats ask for any command"
	puts "attack => attack with your weapon "
	puts"==============================================================================================" 
end	


def show_battle_stats
	if @player.player_dyn_hp > 0 and @enemy.enemy_dyn_hp > 0
		puts "player stats:  hp: #{@player.player_dyn_hp}/#{@player.player_hp}, mana: #{@player.player_dyn_mana}/#{@player.player_mana}   |     #{@enemy.enemy_name} stats:  hp: #{@enemy.enemy_dyn_hp}/#{@enemy.enemy_hp}     mana:   #{@enemy.enemy_dyn_mana}/#{@enemy.enemy_mana} "	
	end
	if @player.player_dyn_hp > 0 and @enemy.enemy_dyn_hp <= 0
		puts "player stats:  hp: #{@player.player_dyn_hp}/#{@player.player_hp}, mana: #{@player.player_dyn_mana}/#{@player.player_mana}   |     #{@enemy.enemy_name} = DEAD"
	end	
	if @player.player_dyn_hp <= 0 
		@deaded = "YOU ARE DEAD"
		puts @deaded

	end			 

end


def show_battle_inventory
	puts "your`s:"
	show_inventory
	puts "enemie`s:"
	@enemy.enemy_loot.each do |smth|
		smth.keys.each do |key|
			puts "#{key.item_name}  X#{smth[key]}"
		end
	end
end

def show_battle_everything
	show_battle_stats
	show_battle_inventory
end



def enemy_here
	@locations.each do |smth|
		if smth.playerhere == true
			smth.location_places.each do |diff|
				if diff.playerhere == true
					if diff.place_enemies != []
						battle
					end
				end
			end
		end
	end
end





def go_to
	print 'where do you want to go:  '
	place = gets.chomp
	@locations.each do |smth|
		if smth.playerhere == true
			smth.location_places.each do |diff|
				if diff.playerhere == false and diff.place_name == place
					diff.playerhere = true
				end
				if diff.playerhere == true and diff.place_name != place
					diff.playerhere = false
					puts "moved!"
					
				end
			end
		end
	end
	location_show
	enemy_here
end


def location_description
	@locations.each do |smth|
		if smth.playerhere == true
			smth.location_places.each do |diff|
				if diff.playerhere == true
					puts "location description: |#{smth.location_description}|"
					puts "place description: |#{diff.place_description}|"
				end
				end
			end	
		end	    					 
end

def you_found
	@locations.each do |smth|
		if smth.playerhere == true
			smth.location_places.each do |diff|
				if diff.playerhere == true
						
						if diff.place_items != [] 
							z = diff.place_items.length - 1
							y = rand(0..z)
							diff.place_items[y].keys.each do |kye|
								if diff.place_items[y][kye] != 0
									print "you found  X#{diff.place_items[y][kye]} #{kye.item_name}! will you take it? (yes/no):   "
									answ = gets.chomp
										if answ == "yes"
											@player.player_inventory.each do |elz|
												elz.keys.each do |key|
													if key == kye
														elz[key] += diff.place_items[y][kye]
														diff.place_items[y][kye] -= diff.place_items[y][kye]
														puts "item added into your inventory"
												end
											end
										end
										else puts "ok, mabye youll take it later!" 
									end
								else puts "nothing to search here!"
								end
							end

					end
				end
			end
		end
	end
end	




def search
	@locations.each do |smth|
		if smth.playerhere == true
			smth.location_places.each do |diff|
				if diff.playerhere == true
					print "searching"
					4.times do 
						sleep 0.65
						print"."
					end
					sleep 0.65
					print ". \n"
					x = rand(0..100)
					if x >= 50 
						you_found	
					end
					if x < 50
						puts "nothing found"
					end
				end
			end
		end
	end
end


def console
	console = 0 
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
			@vihod = 0
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
		if @console == "show location" or @console == "sl"
			location_show
		end
		if @console == "go to"
			go_to
		end
		if @console == "location description" or @console == "ld"
			location_description
		end
		if @console == "search"
			search
		end
		if @deaded == "YOU ARE DEAD"
			puts "better luck next time!"
			@vihod = 0
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
puts "show location (or sl) => name of location and place where you stand, and where you can go                                          |"
puts "go to => insert place name => player moves to another place                                                                        |"
puts "location description (or ld) => show location and place description                                                                |"																															
puts "search => you are trying to search some items in place, where you stand.                                                           |"
puts"====================================================================================================================================="
end

create_new_player
pick_clothing
pick_weapon
pick_items


@player = Player.new(@a, @b, @player_strength, @player_dexility, @player_intellect, @player_vitality, @player_weapon, @player_clothing, @inventory, @player_gold, @a, @b)  




show_commands
puts "ready? => insert ready to start your adventure"
@console = gets.chomp
if @console == "ready"
	@vortex_peak.playerhere = true
	@vortex_peak_enter.playerhere = true
	location_show
	while @vihod != 0 

		@console = gets.chomp
		console
		
	end
end










#    TI DOLZHEN DODELAT LOOT S VRAGOV, SOZDAT NPC, SOZDAT DIALOGI, NAMYTIT CONTENTA



















