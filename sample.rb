class Player
  def hand
      puts "数字を入力してください。"
      puts "0:グー"
      puts "1:チョキ"
      puts "2:パー"

      hand = gets.chomp

      if hand == "0" || hand == "1" || hand == "2"
         player_hand = hand.to_i

      else
        puts "0〜2の数字を入力してください。"
        player = Player.new
        player.hand.new
      end
  end
end




  class Enemy
    def hand
      enemy_hand = rand(3)
      return enemy_hand
    end
  end



  class Janken
    def pon(player_hand, enemy_hand)
      janken = ["グー","チョキ","パー"]
      if  player_hand  == enemy_hand
        puts "相手の手は#{janken[enemy_hand]}です引き分けです"
        return true
      elsif (player_hand  == 0 && enemy_hand == 1)||(player_hand  == 1 && enemy_hand == 2)||(player_hand  == 2 && enemy_hand == 0)
        puts "相手の手は#{janken[enemy_hand]}ですあなたの勝ちです"
        return false
      else
        puts "相手の手は#{janken[enemy_hand]} です あなたの負けです"
        return false
      end
    end
  end


  player = Player.new
  enemy = Enemy.new
  janken = Janken.new

  draw = true

  while draw do
  draw = janken.pon(player.hand,enemy.hand)
  end


