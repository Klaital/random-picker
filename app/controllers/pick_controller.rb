class PickController < ApplicationController
  def pick
    min = (params[:min] || 1).to_i
    max = (params[:max] || 69).to_i
    count = (params[:count] || 1).to_i
    numbers = []
    logger.debug("Picking #{count} numbers between #{min} and #{max}")
    count.times {numbers.push(min + rand(max-min+1))}
    render :json => {:numbers => numbers}
  end
end
