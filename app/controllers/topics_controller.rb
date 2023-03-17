class TopicsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
   @topic = Topic.create(topic_params)
   if @topic.save
   	flash[:notice] = "Topic created successfully"
   else
   	render :new
   end
  end
end
