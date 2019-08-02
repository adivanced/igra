class Player
	attr_accessor :player_hp, :player_mana, :player_strength, :player_dexility, :player_intellect, :player_physics, :player_vitality, :player_weapon, :player_clothing, :player_inventory, :player_gold, :player_dyn_hp, :player_dyn_mana, :player_spells, :spell_equiped
	def initialize(player_hp, player_mana, player_strength, player_dexility, player_intellect, player_physics, player_vitality, player_weapon, player_clothing, player_inventory, player_gold, player_dyn_hp, player_dyn_mana, player_spells, spell_equiped)
		@player_hp=player_hp 
		@player_mana=player_mana
		@player_strength=player_strength
		@player_dexility=player_dexility
		@player_intellect=player_intellect
		@player_physics = player_physics
		@player_vitality=player_vitality
		@player_weapon = player_weapon
		@player_clothing = player_clothing
		@player_inventory = player_inventory
		@player_gold=player_gold
	  @player_dyn_hp = player_dyn_hp
		@player_dyn_mana = player_dyn_mana
		@player_spells = player_spells
		@spell_equiped = spell_equiped
	end
end


class Clothingitem	
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :is_usable, :clothes_protection, :require_phys
	def initialize(item_description, item_name, item_price, item_inv_nbr, is_usable, clothes_protection, require_phys)
		@item_description = item_description
		@item_name = item_name
	  @item_price = item_price
	  @item_inv_nbr = item_inv_nbr
	  @is_usable = is_usable
		@clothes_protection = clothes_protection
	  @require_phys = require_phys
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

class Spellscroll
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :is_usable, :spell
	def initialize(item_description, item_name, item_price, item_inv_nbr, is_usable, spell)
		@item_description = item_description
		@item_name = item_name
		@item_price = item_price
		@item_inv_nbr = item_inv_nbr
		@is_usable = is_usable
		@spell = spell
	end
end

class Damage_spell
	attr_accessor :spell_name, :spell_description, :spell_type, :spell_mana_cost, :spell_damage, :required_int
	def initialize(spell_name, spell_description, spell_type, spell_mana_cost, spell_damage, required_int)
		@spell_name = spell_name
		@spell_description = spell_description
		@spell_type = spell_type
		@spell_mana_cost = spell_mana_cost
		@spell_damage = spell_damage
		@required_int =required_int
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
	attr_accessor :item_description, :item_name, :item_price, :item_inv_nbr, :is_usable, :weapon_damage, :dex_scale, :strength_scale, :cif_dex_scale, :cif_strength_scale, :require_strength, :require_dex, :require_phys
	def initialize(item_description, item_name, item_price, item_inv_nbr, is_usable, weapon_damage, dex_scale, strength_scale, cif_dex_scale, cif_strength_scale, require_strength, require_dex, require_phys)
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
		@require_strength = require_strength
		@require_dex = require_dex
		@require_phys = require_phys		
	end
end

class Enemy
	attr_accessor :enemy_type, :enemy_weapon, :enemy_clothing, :enemy_name, :enemy_hp, :enemy_dyn_hp, :enemy_mana, :enemy_dyn_mana, :enemy_dexility, :enemy_strength, :enemy_gold, :enemy_loot, :enemy_loot_chance, :poison_weak, :bolt_weak, :fire_weak, :drops_weapon, :drops_clothing, :enemy_spells
		def initialize(enemy_type, enemy_weapon, enemy_clothing, enemy_name, enemy_hp, enemy_dyn_hp, enemy_mana, enemy_dyn_mana, enemy_dexility, enemy_strength, enemy_gold, enemy_loot, enemy_loot_chance, poison_weak, bolt_weak, fire_weak, drops_weapon, drops_clothing, enemy_spells)
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
			@enemy_loot_chance = enemy_loot_chance
			@poison_weak = poison_weak
			@bolt_weak = bolt_weak
			@fire_weak = fire_weak
			@drops_weapon = drops_weapon
			@drops_clothing = drops_clothing
			@enemy_spells = enemy_spells
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
	attr_accessor :place_name, :place_description, :place_items, :place_enemies, :place_go_out, :playerhere, :place_npcs
	def initialize(place_name, place_description, place_items, place_enemies, place_go_out, playerhere, place_npcs)
		@place_name = place_name
		@place_description = place_description
		@place_items = place_items
		@place_enemies = place_enemies
		@place_go_out = place_go_out
		@playerhere = playerhere
		@place_npcs = place_npcs
	end
end

class Npc
	attr_accessor :npc_name, :npc_sells, :npc_trade, :npc_gold, :seen_player_before, :things_npc_buy
	def initialize(npc_name, npc_sells, npc_trade, npc_gold, seen_player_before, things_npc_buy)
		@npc_name = npc_name
		@npc_description = npc_description
		@npc_sells = npc_sells
		@npc_trade = npc_trade
		@npc_gold = npc_gold
		@npc_norm_gold = npc_norm_gold
		@seen_player_before = seen_player_before
		@things_npc_buy = things_npc_buy
	end
end



@fire_clot_spell = Damage_spell.new("fire clot", "an easiest fire spell. doesnt do a lot of damage, but is a good choise for a beginning mage.", "fire spell", 20, 15, 4)
@icicle_spell = Damage_spell.new('icicle', "an easiest spell. doesnt do a lot of damage, but is a good choise for a beginner.", "ice spell", 20, 15, 4)
@no_spell = Damage_spell.new("no spell", false, false, false, false, 0)


@barefists = Weaponitem.new('bare fists, lol, why would you try to see its description?', "bare fists", "refuse", 'lol',  "what?", 0, "F", "F", 0, 0, 0, 0, 0)
@barebody = Clothingitem.new('bare body, lol', "bare body", "refuse", 'lol', "what?", 0, 0) 


@iron_straight_sword = Weaponitem.new( 'simple straight sword, made of iron. deals 23 0f damage. costs 50 of gold, you`ll need 2 dex, 2 str, 0 phys', "iron straight sword", 50, 4, "equipable as weapon", 23, "D", "D", 2, 2, 2, 2, 0)
@iron_great_sword = Weaponitem.new('not every human can use this giant sword. made of iron. deals 46 of damage, costs 75 of gold, you`ll need 5 str, 3 dex, 4 phys', "iron great sword", 75, 5, "equipable as weapon", 46, "E", "B", 1, 4, 5, 3, 4)
@iron_mace = Weaponitem.new('mace, made of iron. perfect balance between damage and speed. deals 30 of damage. costs 65 of gold, you`ll need 3 str, 2 dex, 2 phys' ,"iron mace", 65, 6, "equipable as weapon", 30, "D", "C", 2, 3, 3, 2, 2)
@iron_dagger = Weaponitem.new('dagger, perfect for stabbing someone in the back. made of iron. deals 15 of damage, costs 40 of gold, you`ll need 1 str, 1 dex, 1 phys', "iron dagger", 40, 7, "equipable as weapon", 15, "B", "E", 4, 1, 1, 1, 1) 
@spider_teeth = Weaponitem.new('', 'small spider`s teeth', false, false, false, 60, "B", "B", 4, 4, 0, 0, 0)
@steel_dagger = Weaponitem.new('dagger, but made of steel. still good for those who cant hold something bigger, deals 20 of damage, costs 60 of gold, you`ll need 1 str, 1 phys, 1 dex', "steel dagger", 60,  15, "equipable as weapon", 20, "B", "D", 4, 2, 1, 1, 1)

@player_weapon = 0
@player_clothing = 0 


@thief_clothing = Clothingitem.new("clothes, worn by thiefs. has a bad protection(15), but good for sneak. no one will buy it, youll need 3 phys to wear  it", "thief clothing", "refuse", 8, "equipable as clothing", 15, 3)
@knight_armour = Clothingitem.new("armor, worn by knights. really heavy, but has  a giant amount of protection(50), ypu`ll need 8 of phys to wear it", "knight armour", 250, 9, "equipable as clothing", 50, 8)
@magician_robe = Clothingitem.new("robe, worn by magicians. aufull protection(10), costs 300 of gold, you`ll need 1 phys to wear it", "magician robe", 300, 10, "equipable as clothing", 10, 1)
@bounty_hunter_clothing = Clothingitem.new("skilled bounty hunters wear this clothes.has a balanced protection(25), costs 150 of gold, you`ll need 4 phys yo wear it", "bounty hunter clothing", 150, 11, "equipable as clothing", 25, 4)
@small_spider_panzer =  Clothingitem.new('', 'small spider`s pazer', false, false, false, 30, 0)


@healing_pills = Healingitem.new('magic pills, that produce energy, which helps travellers in their journey. regenerates 25 hp, cost 50 of gold', "healing pills", 50, 0, 25, "yes", "hp") 
@gold_nugget = Item.new('a gold nugget. have no idea why would you need it. but it ... shines ...and... its made of gold. costs 400 of gold', "gold nugget", 400, 1, "no")  
@masterkey = Item.new(' good old masterkey.be careful with it. for using this simple thing for too much, you may be inprisoned!, costs 10 of gold', "masterkey", 10, 2, "no")
@loaf_of_bread = Healingitem.new('a freshly bake... an old and hard loaf of bread. you must be starving, if you decided to eat it.regens 5 hp. costs 5 of gold' , "loaf of bread", 5, 3, 5, "yes", "hp") 
@twilight_powder = Healingitem.new('a powder, made of flowers, collected at the special time, during the ywilights. restores 15 mana points, costs 50 of gold', "twilight powder", 50, 12, 15, 'yes', 'mana')
@fire_clot_spell_scroll = Spellscroll.new("a scroll with a simple fire clot spell.", "fire clot scroll", 60, 13, "yes", @fire_clot_spell)
@icicle_spell_scroll = Spellscroll.new("a scroll with a simple fire clot spell.", "icicle spell scroll", 60, 14, "yes", @icicle_spell)

@camper_thief = Enemy.new("human", @iron_dagger, @thief_clothing, "Garret the mean thief", 130, 130, 60, 60, 6, 5, 125, [{@healing_pills => 2}], 100, 100, 100, 100, true, true, [@icicle_spell])
@cave_spider_small = Enemy.new("insect", @spider_teeth, @small_spider_panzer, "Small cave spider", 275, 275, 0, 0, 15, 10, 0, [{@spider_chitin => 2}, {@spider_venom => 1}], 50, 0, 80, 150, false, false, [])

@osthorn_oloric = Npc.new("Osthorn Oloric", true, [{@healing_pills => 15}, {@twilight_powder => 8}, {@steel_dagger => 2}, [@icicle_spell_scroll => 4]], 400, 450, false, 0)


@vortex_peak_enter = Place.new("vortex peak enter", " an edge of a cliff. really beautiful sight out from here. you can see somethi... No. too far to see anything.", [{@healing_pills => 2}], [], {}, false, [])
@vortex_peak_exit = Place.new("vortex peak exit", "a tunnel, wich goes into a cave. a bit dark in it", [], [], {@darkcave => @darkcave_enter}, false, [])
@giant_rock = Place.new("giant rock", "a giant rock, behind wich is really easy to hide. a lot of skeletons lay behind it.", [], [@camper_thief], {}, false, [])



@darkcave_enter = Place.new(" dark cave enter", "an enter in the tunnel-looking cave.", [{@loaf_of_bread => 2}, {@iron_straight_sword => 1}], [], {@vortex_peak => @vortex_peak_exit}, false, [])
@darkcave_lake_room = Place.new("room with lake", "a room with a big and bottomless-looking lake.", [{@healing_pills => 1}], [@cave_spider_small], {}, false, [])
@darkcave_spider_room = Place.new("spider cave", "room that seems to be a spider`s home. a few corpses are stuck in the spider nets.", [{@iron_dagger => 2}, {@thief_clothing => 1}, {@twilight_powder => 1}, {@healing_pills => 2}], [@cave_spider_small, @cave_spider_small, @cave_spider_small], {}, false, [])
@darkcave_exit = Place.new("dark cave exit", "the end of the tunnel, the light can be seen from here", [], [], false, false, [])
@darkcave_osthorns_room = Place.new("Osthorn`s room", "A room in a dark cave, occupied by a trader, called Osthorn. inside it can be seen a bed, chairs, chest and table", [], [], {}, false, [])

@vortex_peak = Location.new("an antient mysterious peak, out of where, by some reason, strangers  sometimes go out of. strangers who dont remember anything about who are they or why are they here...", false, "vortex peak", [@vortex_peak_enter, @vortex_peak_exit, @giant_rock])

@darkcave = Location.new("a dark and long tunnel, whith few rooms in it. In the end of it can be seen light.", false, "dark cave", [@darkcave_enter, @darkcave_lake_room, @darkcave_spider_room, @darkcave_exit])


@vortex_peak_exit.place_go_out = {@darkcave => @darkcave_enter}
@darkcave_enter.place_go_out = {@vortex_peak => @vortex_peak_exit}






@locations = [@vortex_peak, @darkcave]







def garret_the_mean_thief_talk
	puts "Garret the mean thief:"
	puts "Oh! Hello!"
	sleep 0.8
	puts "Better start praying, because theese seconds are going to be the last ones in the life of thee"
	sleep 0.8
	puts "i am gonna kill you and loot your corpse, just like  as I killed lots of idiots before you!"
	sleep 1.2
	puts "WHATS YOUR ANSWER?"
	answ = 0
	x= "     ...What!?"
	puts " #{x} (insert 1)"
	while answ  != 1 do
		answ = gets.to_i
	end
	if answ == 1
		puts "YOU:"
		puts(x)
	end 
end



def create_new_player
	@stats = 20
	puts 'hello, traveller!'
	puts 'its time for you to create your hero!'
	puts 'first you need to distribute your heroes stats (between vitality, strength, dexility, physial power, and intillect)'
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
	print "physical power: "
	@player_physics = gets.to_i
	@a += @player_physics / 4
	@stats -= @player_physics
	puts "stats left: #{@stats}"
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
	puts "physical power = #{@player_physics}"
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
	@inventory[@fire_clot_spell_scroll.item_inv_nbr][@fire_clot_spell_scroll] = 0

	puts 'healing pills(costs 50 of gold)   (insert 1)'
	puts 'loaf of bread(costs 5 of gold)   (insert 2)'
	puts 'masterkey (cost 10 of gold)      (insert 3)'
	puts 'gold nugget(costs 400 of gold) (insert 4)'
	puts 'twilight powder (costs 50 of gold) (insert 5)'
	puts 'fire clot spell scroll (costs 60 of gold) (insert 6)'
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

		if x == 6
			@inventory[@fire_clot_spell_scroll.item_inv_nbr][@fire_clot_spell_scroll] += 1
			@player_gold = @player_gold - @fire_clot_spell_scroll.item_price
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
	puts "SPELL EQUIPED:"
	if @player.spell_equiped != @no_spell
		print "#{@player.spell_equiped.spell_name}, TYPE: #{@player.spell_equiped.spell_type}"
	else
		print "NO SPELL EQUIPED! \n"
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
	puts "physical power = #{@player.player_physics}"
end

def show_everything
  show_stats
  show_equipment
  show_inventory
  show_spells
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
	#print 'insert a weapon name:  '
	itemname = @player.player_weapon.item_name
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
	fail = "yes"
	puts "thigs that can be equiped as weapon:" 
	@player.player_inventory.each do |itm|
		itm.keys.each do |key|
			if key.is_usable == "equipable as weapon" and key != @barefists and itm[key] != 0 and @player.player_weapon != key
			puts "#{key.item_name}"
			end
		end
	end
	print 'insert a weapon name:  '
	itemname = gets.chomp
	@player.player_inventory. each do |smth|
		if smth != {}
			smth.keys.each do |diff|
				if diff.class.name == "Weaponitem"
					if smth[diff] != 0 and diff.item_name == itemname and diff.require_dex <= @player.player_dexility and diff.require_phys <= @player.player_physics and diff.require_strength <= @player_strength 
						@player.player_weapon = diff
						smth[diff] -= 1
						puts 'equiped!!!'
						fail = "no"
					end
				end
			end
		end
	end
	if fail == "yes"
		puts "something went wrong! (check the accuracy of inserted name and compare your stats to the required ones)"
	end
end

def unequip_clothing
	#print 'insert a clothes name:  '
	itemname = @player.player_clothing.item_name
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
	eq = 0
	puts "thigs that can be equiped as clothing:" 
		@player.player_inventory.each do |itm|
			itm.keys.each do |key|
				if key.is_usable == "equipable as clothing" and key != @barebody and itm[key] != 0 and @player.player_clothing != key
					puts "#{key.item_name}"
				end
			end
		end


	print 'insert a clothes name:  '
	itemname = gets.chomp
	@player.player_inventory. each do |smth|
		if smth != {}
			smth.keys.each do |diff|
				if smth[diff] != 0 and diff.item_name == itemname and @player.player_physics >= diff.require_phys
					@player.player_clothing = diff
					smth[diff] -= 1
					puts 'equiped!!!'
					eq = 1
				end
			end
		end
	end
	if eq != 1
		puts "something went wrong!(check the accuracy of name inserted and compare your stats to required ones"
	end
end

def equip_spell
	puts "Things that can be equiped as spells:"
	@player.player_spells.each do |spell|
		if @player.spell_equiped != spell and spell != @no_spell
			puts "#{spell.spell_name}, TYPE: #{spell.spell_type}, COST: #{spell.spell_mana_cost}, INT required: #{spell.required_int}"
		end
		puts "Spell equiped now: #{@player.spell_equiped.spell_name}"
	end
	print "wich one do you want to equip?  "
	spellname  = gets.chomp
	@player.player_spells.each do |spell|
		if spell.spell_name  == spellname and spell.required_int <= @player.player_intellect
			@player.spell_equiped = spell
		end
		if spell.required_int > @player.player_intellect
			puts "You don`t have enough intellect for that!"
		end
	end
end


def unequip_spell
	if @player.spell_equiped != @no_spell
		@player.spell_equiped = @no_spell
		puts "unequiped!"
	else
		puts "no spells equiped!"
	end
end


def show_spells
	puts "All your spells:"
	@player.player_spells.each do |spel|
		if spel != @no_spell
			if spel.class.name == "Damage_spell"
				puts "SPELL: #{spel.spell_name}, TYPE: #{spel.spell_type}, DAMAGE: #{spel.spell_damage}"
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
	@locations.each do |locat|
		if locat.playerhere == true
			locat.location_places.each do |plac|
				if plac.playerhere == true and plac.place_go_out != {}
					puts "Locations you can go to from here :"
					plac.place_go_out.keys.each do |g|
						puts g.location_name
					end
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
						print "here who waits you:"
						diff.place_enemies.each do |enemy|
							puts "#{enemy.enemy_name}"
						end
						sleep 1.2
						diff.place_enemies.each do |enemy|
							puts "#{enemy.enemy_name} comes closer to you!"
							@enemy_you_fight = enemy
              if enemy.enemy_name == "Garret the mean thief"
                garret_the_mean_thief_talk
							end
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
								battle_show_enemy_info
								puts "player stats:  hp: #{@player.player_dyn_hp}/#{@player.player_hp}, mana: #{@player.player_dyn_mana}/#{@player.player_mana}   |     #{enemy.enemy_name} stats:  hp: #{enemy.enemy_dyn_hp}/#{enemy.enemy_hp}     mana: #{enemy.enemy_dyn_mana}/#{enemy.enemy_mana} "   
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
									if consolka == "use"
										use
									end
									if consolka == "equip spell"
										equip_spell
									end
									if consolka == "unequip_spell"
										unequip_spell
									end

									if consolka == "enemy stats"
										battle_show_enemy_info
									end

									if consolka == "cast"
										if @player.spell_equiped.class.name == "Damage_spell"
											if @player.spell_equiped.spell_type == "fire spell"
												enemy.enemy_dyn_hp -= (@player.spell_equiped.spell_damage - (@player.spell_equiped.spell_damage * enemy.enemy_clothing.clothes_protection * 0.01) + (@player.spell_equiped.spell_damage * enemy.fire_weak * 0.01)) 
												@player.player_dyn_mana -= @player.spell_equiped.spell_mana_cost
												
												sleep  0.5
												puts "Your cast damaged your enemy for #{(@player.spell_equiped.spell_damage - (@player.spell_equiped.spell_damage * enemy.enemy_clothing.clothes_protection * 0.01) + (@player.spell_equiped.spell_damage * enemy.fire_weak * 0.01)) }hp"
												battle_enemy_passive_item_use	
												battle_enemy_agressive_do			
												show_battle_stats
												if enemy.enemy_dyn_hp <= 0
													diff.place_enemies.shift
													@last_dead_enemy = enemy
													loot
													@enemy_you_fight = false
												end
												if @deaded == "YOU ARE DEAD"
													@enemy_you_fight = false
													break
												end
											end
										end
									end


									if consolka == "attack"										
										#@player.player_dyn_hp -= (enemy.enemy_weapon.weapon_damage - (enemy.enemy_weapon.weapon_damage * @player.player_clothing.clothes_protection * 0.01) + (enemy.enemy_weapon.weapon_damage *  enemy.enemy_weapon.cif_dex_scale * (@player.player_dexility - 2) * 0.1) +(enemy.enemy_weapon.weapon_damage * enemy.enemy_weapon.cif_strength_scale * (@player.player_strength - 2) * 0.1))
										sleep  0.5
										puts "Your attack damaged your enemy for #{((@player.player_weapon.weapon_damage +  (@player.player_weapon.weapon_damage * @player.player_weapon.cif_strength_scale * 0.1) + (@player.player_weapon.weapon_damage * @player.player_weapon.cif_dex_scale * 0.1)) - ((@player.player_weapon.weapon_damage +  @player.player_weapon.weapon_damage * @player.player_weapon.cif_strength_scale * 0.1 + @player.player_weapon.weapon_damage * @player.player_weapon.cif_dex_scale * 0.1) * (enemy.enemy_clothing.clothes_protection * 0.01)  ))}hp"
										enemy.enemy_dyn_hp -= ((@player.player_weapon.weapon_damage +  (@player.player_weapon.weapon_damage * @player.player_weapon.cif_strength_scale * 0.1) + (@player.player_weapon.weapon_damage * @player.player_weapon.cif_dex_scale * 0.1)) - ((@player.player_weapon.weapon_damage +  @player.player_weapon.weapon_damage * @player.player_weapon.cif_strength_scale * 0.1 + @player.player_weapon.weapon_damage * @player.player_weapon.cif_dex_scale * 0.1) * (enemy.enemy_clothing.clothes_protection * 0.01)  ))
										battle_enemy_passive_item_use
										battle_enemy_agressive_do
										show_battle_stats
										if enemy.enemy_dyn_hp <= 0
											diff.place_enemies.shift
											@last_dead_enemy = enemy
											@enemy_you_fight = false
											loot
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


def loot	
	puts "here what you found on his corpse:"
	@last_dead_enemy.enemy_loot.each do |itm|
		itm.keys.each do |key|
			if itm[key] > 0
				puts " #{key.item_name}    X#{itm[key]}"
			end
			@player.player_inventory.each do |player_itm_hash|
				player_itm_hash.keys.each do |kye|
					if key == kye 
						chahce = @last_dead_enemy.enemy_loot_chance
						chance = rand(1..100)
						if chance <= chahce
							player_itm_hash[kye] += itm[kye]
						end
					end
				end
			end
		end
	end
	if @last_dead_enemy.drops_weapon == true
		puts "#{@last_dead_enemy.enemy_weapon.item_name}  X1"
		@player.player_inventory.each do |hash|
			hash.keys.each do |itm|
				if itm.item_name == @last_dead_enemy.enemy_weapon.item_name
					hash[itm] += 1
				end
			end
		end
	end
	if @last_dead_enemy.drops_clothing == true
		puts "#{@last_dead_enemy.enemy_clothing.item_name}  X1"
		@player.player_inventory.each do |hash|
			hash.keys.each do |itm|
				if itm.item_name == @last_dead_enemy.enemy_clothing.item_name
					hash[itm] += 1
				end
			end
		end
	end
end


def use
	puts "Here what  you can use:"
	@player.player_inventory.each do |hash|
		hash.keys.each do |key|
			if key.is_usable == "yes" and hash[key] != 0
				puts "#{key.item_name} X#{hash[key]}"
			end
		end
	end
	print "Wich of them you would like to use?   "
	usename = gets.chomp
	@player.player_inventory.each do |hash|
		hash.keys.each do |itm|
			if itm.item_name == usename
				if itm.is_usable == "yes" and hash[itm] != 0


					if itm.class.name == "Spellscroll"
						@player.player_spells.each do |smth|
							if smth == itm.spell
								puts "You`ve already learned it"
							else
								@player.player_spells << itm.spell
								hash[itm] -= 1
								puts "You have just learned a new spell!"
								break
							end
						end
					end

 
					if itm.class.name == "Healingitem"
						if itm.what_heals == "hp"
							if @player.player_dyn_hp == @player.player_hp
								puts "Your health is full!"
							end
							if @player.player_dyn_hp < @player.player_hp
								@player.player_dyn_hp += itm.item_heal
								if @player.player_dyn_hp > @player.player_hp
									@player.player_dyn_hp = @player.player_hp
								end
								puts "Now your hp = #{@player.player_dyn_hp} "
								hash[itm] -= 1
							end
						end
					end
				end
			end
		end
	end
end


def battle_enemy_passive_item_use
	enemy_used_heals_mana = false
	enemy_used_heals_hp = false
	enemy_used_damages = false
	chance_of_heal_hp = 100 - ((@enemy_you_fight.enemy_dyn_hp * 100) / @enemy_you_fight.enemy_hp)
	chance_of_heal_mana = 100 - ((@enemy_you_fight.enemy_dyn_mana * 100) / @enemy_you_fight.enemy_mana)
	@enemy_you_fight.enemy_loot.each do |hsh|
		hsh.keys.each do |itm|
						#Healing hp
			if itm.class.name == "Healingitem" and enemy_used_heals_hp == false and itm.what_heals == "hp"
				chance_of_heal_hp2 = rand(1..100)
				if chance_of_heal_hp2 <= chance_of_heal_hp
					if hsh[itm] > 0
						@enemy_you_fight.enemy_dyn_hp += itm.item_heal
						if @enemy_you_fight.enemy_dyn_hp > @enemy_you_fight.enemy_hp
							@enemy_you_fight.enemy_dyn_hp = @enemy_you_fight.enemy_hp
						end
						hsh[itm] -= 1
						enemy_used_heals_hp = true
						puts "#{@enemy_you_fight.enemy_name} uses #{itm.item_name} and restores #{itm.item_heal} hp"
					end
				end
			end

						#Healing mana
			if itm.class.name == "Healingitem" and enemy_used_heals_mana == false and itm.what_heals == "mana"
				chance_of_heal_mana2 = rand(1..100)
				if chance_of_heal_mana2 <= chance_of_heal_mana
					if hsh[itm] > 0
						@enemy_you_fight.enemy_dyn_mana += itm.item_heal
						if @enemy_you_fight.enemy_dyn_mana > @enemy_you_fight.enemy_mana
							@enemy_you_fight.enemy_dyn_mana = @enemy_you_fight.enemy_mana
						end
						hsh[itm] -= 1
						enemy_used_heals_mana = true
						puts "#{@enemy_you_fight.enemy_name} uses #{itm.item_name} and restores #{itm.item_heal} mana"
					end
				end
			end

						#Use Damage-Dealing Item
		end
	end

			




	enemy_used_damages = false
	enemy_used_heals_hp = false
	enemy_used_heals_mana = false

end




def battle_enemy_agressive_do
	spell_nbr = -1
	cast_chance = 35
	attack_chance = 65
	if @enemy_you_fight.enemy_weapon == @barefists and @enemy_you_fight.enemy_spells != []
		attack_chance = 0
		cast_chance = 100
	end
	if @enemy_you_fight.enemy_weapon != @barefists and @enemy_you_fight.enemy_spells == []
		attack_chance = 100
		cast_chance = 0
	end

	if @enemy_you_fight.enemy_spells != []
		@enemy_you_fight.enemy_spells.each do |spell|
			spell_nbr += 1
		end
	
		choise = rand(0..spell_nbr)
		chosen_spell = @enemy_you_fight.enemy_spells[choise]

		if chosen_spell.class.name == "Damage_spell"
			if chosen_spell.spell_damage > @enemy_you_fight.enemy_weapon.weapon_damage
				cast_chance = 80
				attack_chance = 20
			end

			if chosen_spell.spell_damage < @enemy_you_fight.enemy_weapon.weapon_damage
				cast_chance = 20
				attack_chance = 80
			end

			if chosen_spell.spell_mana_cost > @enemy_you_fight.enemy_dyn_mana
				cast_chance = 0
				attack_chance = 100
			end
		end
	end

	does_chanse = rand(1..100)
	if does_chanse < cast_chance
						#Damage Spell



		if chosen_spell.class.name == "Damage_spell"
			puts "#{@enemy_you_fight.enemy_name} casts #{chosen_spell.spell_name} and deals #{chosen_spell.spell_damage - (chosen_spell.spell_damage * @player.player_clothing.clothes_protection * 0.01)} hp"
			@player.player_dyn_hp -= chosen_spell.spell_damage - (chosen_spell.spell_damage * @player.player_clothing.clothes_protection * 0.01)			 
			@enemy_you_fight.enemy_dyn_mana -= chosen_spell.spell_mana_cost
		end




	else
		puts "#{@enemy_you_fight.enemy_name} attacks you! and deals #{(@enemy_you_fight.enemy_weapon.weapon_damage - (@enemy_you_fight.enemy_weapon.weapon_damage * @player.player_clothing.clothes_protection * 0.01) + (@enemy_you_fight.enemy_weapon.weapon_damage *  @enemy_you_fight.enemy_weapon.cif_dex_scale * (@player.player_dexility - 2) * 0.1) +(@enemy_you_fight.enemy_weapon.weapon_damage * @enemy_you_fight.enemy_weapon.cif_strength_scale * (@player.player_strength - 2) * 0.1))} hp of damage"
		@player.player_dyn_hp -= (@enemy_you_fight.enemy_weapon.weapon_damage - (@enemy_you_fight.enemy_weapon.weapon_damage * @player.player_clothing.clothes_protection * 0.01) + (@enemy_you_fight.enemy_weapon.weapon_damage *  @enemy_you_fight.enemy_weapon.cif_dex_scale * (@player.player_dexility - 2) * 0.1) +(@enemy_you_fight.enemy_weapon.weapon_damage * @enemy_you_fight.enemy_weapon.cif_strength_scale * (@player.player_strength - 2) * 0.1))

	end
end
					



def battle_show_enemy_info
	puts "YOUR ENEMY:"
	puts "NAME: #{@enemy_you_fight.enemy_name}"
	puts "HP #{@enemy_you_fight.enemy_dyn_hp}/#{@enemy_you_fight.enemy_hp}         MANA #{@enemy_you_fight.enemy_dyn_mana}/#{@enemy_you_fight.enemy_mana}"
	puts "WEAPON #{@enemy_you_fight.enemy_weapon.item_name}"
	puts "HIS SPELLS: "
	@enemy_you_fight.enemy_spells.each do |spell|
		print "#{spell.spell_name}, "
	end
	puts "HIS INVENTORY:"
	@enemy_you_fight.enemy_loot.each do |hsh|
		hsh.keys.each do |itm|
			print "#{itm.item_name}, "
		end
	end
end


def start_npc_talk
	puts "ALL NPC HERE:"
	@locations.each do |location|
		if location.playerhere == true
			location.location_places.each do |place|
				if place.playerhere == true
					place.place_npcs.each do |npc|
						puts npc.npc_name
					end
				end
			end
		end
	end

	print "whome would you like to talk to?"
	talk_to = gets.chomp

	@locations.each do |location|
		if location.playerhere == true
			location.location_places.each do |place|
				if place.playerhere == true
					place.place_npcs.each do |npc|
						if npc.npc_name == talk_to
							@npc_you_talk_now = npc
							npc_talk_menu
						end
					end
				end
			end
		end
	end
end


def npc_talk_menu
	puts "You come closer to #{@npc_you_talk_now.npc_name}"
	puts "What would you like to do?"
	puts "TALK (insert talk)"
	if @npc_you_talk_now.npc_sells == true
		puts "TRADE (insert trade)"
	end
	print "insert your answer:"
	answer = gets.chomp
		if answer == "talk"



		end

		if answer == "trade" and @npc_you_talk_now.npc_sells == true
			npc_trading
		end
end




def trade
	puts "what would you like to do?"
	puts "sell (ins 0)"
	puts "buy (ins 1)"
	x =gets.to_i
	if x == 0
		npc_buy_your
	end
	if x == 1
		npc_sell_to_you
	end
end


def npc_buy_your
	puts "here what you can sell to this npc"
	if @npc_you_talk_now.things_npc_buy != false
		@player.player_inventory.each do |hash|
			hash.keys.each do |itm|
				@npc_you_talk_now.things_npc_buy.each do |classname|
					if classname == itm.class.name
						if hash[itm] != 0
							puts "#{itm.item_name}  X#{hash[itm]}"
						end
					end
				end
			end
		end
	else
		@player.player_inventory.each do |hash|
			hash.keys.each do |itm|
				if hash[itm] != 0
					puts "#{itm.item_name}  X#{hash[itm]}"
				end
			end
		end
	end
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
	puts "equip spell => insert spell name => equip"
	puts "unequip spell => unequips spell"
	puts "show inventory => show your gold & inventory"
	puts "to show stats ask for any command"
	puts "attack => attack with your weapon "
	puts "use => insert name of item => use selected item"
	puts "cast => cast an equiped spell"
	puts "enemy stats => all info about your enemy"
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
	show_inventory
	puts "ENEMIE`S INVENTORY:"
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

def move_to
	@locations.each do |smth|
		smth.location_places.each do |diff|
			if smth.playerhere == true and diff.playerhere == true
				if diff.place_go_out != false
					print "where do you want to move?"
					location = gets.chomp
					diff.place_go_out.keys.each do |plac|
						if plac.location_name == location
							smth.playerhere = false
							diff.playerhere = false
							diff.place_go_out[plac].playerhere = true
							plac.playerhere = true
							puts "moved!"
							location_show
							break
						end
					end
				end
			end
		end
	end
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
										else puts "ok, mabye you`ll take it later!" 
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
		if @console == "equip spell"
			equip_spell
		end
		if @console == "unequip spell"
			unequip_spell
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
		if @console == "use"
			use
		end
		if @console == "show spells"
			show_spells
		end

		if @console == "move to"
			move_to
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
puts "show spells => show all your spells                                     																													 |"
puts "show everything => show stats, inventory, equipment                                                                                |"
puts "description => insert itemname = > show item description                                                                           |"
puts "exit the game => leave the game(no saves(at least yet))                                                                            |"
puts "drop item => insert item name and item amount => item is deleted from inventory !!!!! weapon or clothes unequip if want drop !!!!  |"
puts "unequip weapon => insert weapon name => unequips weapon                                                                            |"
puts "equip weapon => insert weapon name => equips weapon                                                                                |"
puts "equip clothes => insert clothes name => equips clothing                                                                            |"
puts "unequip clothes => insert clothes name => unequips clothing                                                                        |"
puts "show location (or sl) => name of location and place where you stand, and where you can go                                          |"
puts "equip spell => insert spell name => equips spell                                                                                   |"
puts "unequip spell => unequips equiped spell                                                                                            |"
puts "go to => insert place name => player moves to another place                                                                        |"
puts "move to => leave your location, go to another one                                                                                  |"
puts "location description (or ld) => show location and place description                                                                |"																														
puts "search => you are trying to search some items in place, where you stand.                                                           |"
puts "use => shows all usable items => insert item`s name																																								 |"
puts"====================================================================================================================================="
end

create_new_player
pick_clothing
pick_weapon
pick_items


@player = Player.new(@a, @b, @player_strength, @player_dexility, @player_intellect, @player_physics, @player_vitality, @barefists, @barebody, @inventory, @player_gold, @a, @b, [@no_spell], @no_spell)  
@player.player_inventory.each do |hash|
	hash.keys.each do |itm|
		if itm.item_name == @player_weapon.item_name
			hash[itm] += 1
		end
	end
end
@player.player_inventory.each do |hash|
	hash.keys.each do |itm|
		if itm.item_name == @player_clothing.item_name
			hash[itm] += 1
		end
	end
end
@enemy_you_fight = false





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












#    TI DOLZHEN  SDELAT PEREHODI MEZHDY LOCATIANMI,   SOZDAT NPC, SOZDAT DIALOGI, sozdat magiu , NAMYTIT CONTENTA





