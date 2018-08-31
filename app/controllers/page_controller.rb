class PageController < ApplicationController
  def index
    @message = Message.new
  end
end
