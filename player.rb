class Player
  def play_turn(warrior)
		if warrior.feel.wall?
			warrior.pivot!
		else
			front = warrior.look
			puts front.to_s
			if front[0].to_s != 'nothing'
				if front[0].to_s == 'Captive'
					warrior.rescue!
				else
					warrior.attack! 
				end
			elsif front.to_s.include? 'Archer' or front.to_s.include? 'Wizard' and front[1].to_s != 'Captive'
				warrior.shoot! 
			else
				if warrior.health < 15
					warrior.rest!
				else
					warrior.walk!
				end
			end
		end
	end
end
