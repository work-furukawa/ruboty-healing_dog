require 'net/http'
require 'json'

module Ruboty
  module HealingDog
    module Actions
      class HealingDog < Ruboty::Actions::Base
        RANDOM_DOG_URL = 'https://dog.ceo/api/breeds/image/random'
        URI = URI(RANDOM_DOG_URL)

        def call
          message.reply(healing_dog)
        end

        private
        def healing_dog
          res = Net::HTTP.get_response(URI)
          data = JSON.parse(res.body.to_s)
          data['message']
        end
      end
    end
  end
end
