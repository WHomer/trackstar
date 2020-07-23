class Kudo < ApplicationRecord
  belongs_to :sent_by_user, class_name: 'User'
  belongs_to :sent_to_user, class_name: 'User'


end