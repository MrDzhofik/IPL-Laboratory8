class CalcController < ApplicationController
  def input
  end

  def show
    @right_numbers = []
    @a = params[:power].to_i
    (10**(@a - 1)...(10**@a)).step(1) do |number|
      @right_numbers.push(number) if find(number) == number
    end
  end

  def find(number)
    summa = 0
    @a.times do
      tri = number % 10
      number /= 10
      summa += tri**@a
    end
    summa
  end
end
