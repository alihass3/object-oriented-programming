class Player
  def initialize(gold_coins,health_points,lives)
    @gold_coins=gold_coins
    @health_points=health_points
    @lives=lives
    end

  def level_up
    @lives+=1
    end

    def collect_treasure
      @gold_coins+=1
      if ((@gold_coins%10)==0)
        level_up
      end

    end

    def do_battle(damage)
      @health_points=@health_points-damage
      if (@health_points<1)
        @lives=@lives-1
        @health_points=10
      end
      if (@lives<=0)
        restart
      end

    end


    def restart
      @gold_coins=5
      @health_points=0
      @lives=10
    end

    def status
      puts "I have #{@gold_coins} coins, #{@lives} lives, and #{@health_points}health_points"
    end


end

pokemon=Player.new(0,10,5)
pokemon.status
pokemon.level_up
pokemon.status

pokemon.collect_treasure
pokemon.status

pokemon.do_battle(10)
pokemon.status

pokemon.do_battle(4)
pokemon.status
