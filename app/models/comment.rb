class Comment < ActiveRecord::Base
	belongs_to :post
  	validates :post_id,presence: true
	validates :name,presence: true
	validates :email,presence: true
	validates :content,presence: true
end
