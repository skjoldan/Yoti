class UsersController < ApplicationController
  require 'rest_client'
  require 'json'

  USERNAME = "myfinance" # needed to access the APi
  PASSWORD = "credit123" # needed to access the APi
  API_BASE_URL = "http://localhost:3000/" # base url of the API
  appid = 123456

 def correctly
 
  Json = {:name => "MyApp", :domain => "http://my.domain.com", :permissions => "A"}
  
  rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
  begin
    rest_resource.put "#{api_base_url}/{appid}", Jsonson.to_json , {:content_type => "application/json"}
	flash[:notice] = "User Updated successfully"
    rescue Exception => e
      flash[:error] = "User Failed to Update"
    end
  end

 
 def missing_information
  Json = {:name => "MyApp", :domain => "http://my.domain.com"}
  
  rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
  begin
    rest_resource.put "#{api_base_url}/{appid}", Jsonson.to_json , {:content_type => "application/json"}
    rescue Exception => e
      flash[:error] = e.response
    end
  end


 
  def incorrect_information
  Json = {:name => "MyApp", :domain => "http://my.domain.com", :perm => "A"}
  
  rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
  begin
    rest_resource.put "#{api_base_url}/{appid}", Jsonson.to_json , {:content_type => "application/json"}
    rescue Exception => e
      flash[:error] = e.response
    end
  end


 
def incorrect_appid
  appid = xxxxx
  Json = {:name => "MyApp", :domain => "http://my.domain.com", :perm => "A"}
  
  rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
  begin
    rest_resource.put "#{api_base_url}/{appid}", Jsonson.to_json , {:content_type => "application/json"}
    rescue Exception => e
      flash[:error] = e.response
    end
  end

 end