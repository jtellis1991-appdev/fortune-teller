class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/boohoo.html.erb"})
  end 

  def dice_roll
    @dice_roll = params[:count]
    @dice_side = params[:side]
  
    @array_of_numbers = Array.new

    @dice_roll.to_i.times do
      another_number = rand(1..@dice_side.to_i)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "dice_me/rolling.html.erb"})
  end
end
