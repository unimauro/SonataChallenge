class WelcomeController < ApplicationController
    def car
        @variable = 'Go Vamos con todo'
        @variable1 = User.first.username 
        @credentials = Rails.application.credentials.sonatafy
    end
end