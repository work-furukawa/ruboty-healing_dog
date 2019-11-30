require "ruboty/healing_dog/actions/healing_dog"

module Ruboty
  module Handlers
    class HealingDog < Base
      on(
        /(inu|dog)/,
        name: 'healing_dog',
        description: 'random dog image'
      )

      def healing_dog(message)
        Ruboty::HealingDog::Actions::HealingDog.new(message).call
      end
    end
  end
end
