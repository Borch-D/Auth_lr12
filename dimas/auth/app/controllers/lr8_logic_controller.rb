class Lr8LogicController < ApplicationController
  def input; end

  def output
    @mas = Array.new()
    (1..params[:n].to_i).each do |pal|
      arr = Array.new()
      if (pal.to_s(2) == pal.to_s(2).reverse) && (pal.to_s == pal.to_s.reverse)
        arr << pal.to_s << pal.to_s(2)
        @mas << arr
      end
    end
  end
end
