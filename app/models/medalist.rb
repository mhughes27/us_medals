class Medalist < ActiveRecord::Base
	validates :athlete, presence: true,
						length: { minimum: 3}
	validates :sport, presence: true,
						length: { minimum: 3}
	validates :event, presence: true,
						length: { minimum: 3}
	validates :place, presence: true,
						length: { minimum: 4}

end
