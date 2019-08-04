class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network


  def actors_list
   #Returns an Array of the full names of each actor
   #associated with the a show.
    full_name = self.first_name + self.last_name
    full_name
  end
end
