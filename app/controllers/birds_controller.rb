class BirdsController < ApplicationController
  def index
    birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }
  end
end
