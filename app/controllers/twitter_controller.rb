require 'pry'
require 'oauth'
class TwitterController < ApplicationController
    def create
        ckey = ENV['KEY']
        csecret = ENV['SECRET_KEY']
        consumer = OAuth::Consumer.new(ckey,csecret,
            :site => 'https://api.twitter.com',
            :authorize_path => '/oauth/authenticate',
            :debug_output => false)
        callback_url = "http://127.0.0.1:3000/auth/callback"
        request_token = consumer.get_request_token(oauth_callback: callback_url)
        token = request_token.token
        token_secret = request_token.secret
        confirmed = request_token.params["oauth_callback_confirmed"]
        if confirmed === "true"
            redirect_to "https://api.twitter.com/oauth/authorize?oauth_token=#{token}"
        else
            redirect_to "/"
        end
    end
end
