class Comment < ActiveRecord::Base
    belongs_to :yblog
    belongs_to :oblog
    belongs_to :annct
    belongs_to :user
    has_many :users
end
