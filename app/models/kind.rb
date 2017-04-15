class Kind < ActiveRecord::Base
  has_many :contacts

  paginates_per 20
end
