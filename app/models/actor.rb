class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    # can list all of its shows and characters
    list = ["#{self.character} - #{self.show}"]
    list
  end


end
