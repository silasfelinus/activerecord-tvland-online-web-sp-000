class Character < ActiveRecord::Base
    belongs to :actor, :show

end
