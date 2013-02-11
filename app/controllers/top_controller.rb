class TopController < ApplicationController

  skip_before_filter :authenticate_user! 

  def index
  end

  def get_json_one
    @car_names = CarName.all
    json = {
      :body => {
        :meta => {
          :status => 200
        },
        :data => {
          :id => 1,:maker_id => 2, :name => "name1", :created_at => "2013/1/1", :updated_at => "2013/2/1"
        }
      }    
    }
    render :json => json
  end
  
  def get_json_all
    @car_names = CarName.all
    json = {
      :body => {
        :meta => {
          :status => 200
        },
        :data => @car_names
      }    
    }
    render :json => json
  end

  #   ,"data" => [
    #     { "id" => 1,"maker_id" => 2, "name" => "name1", "created_at" => "2013/1/1", "updated_at" => "2013/2/1"}
    #     ,{ "id" => 2,"maker_id" => 2, "name" => "name1", "created_at" => "2013/1/1", "updated_at" => "2013/2/1"}
    #   ]
end
