class Person < ActiveRecord::Base
    belongs_to :type
    belongs_to :film
    belongs_to :user

    def self.get_people
        people = RestClient.get('https://ghibliapi.herokuapp.com/people')
        people = JSON.parse(people)
        people
    end    
end

