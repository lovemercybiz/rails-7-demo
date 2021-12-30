class Comment < ApplicationRecord
  belongs_to :post
  broadcasts_to :post #for reload without reloading but not working
end
