class Item < ApplicationRecord
  belongs_to :list
  belongs_to :user, optional: true
end
