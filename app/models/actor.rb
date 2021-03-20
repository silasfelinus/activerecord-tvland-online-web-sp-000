class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.shows
  end

  def say_that_thing_you_say
    self.catchphrase
  end

end
