class PlayList < ApplicationRecord
    has_many :play_list_items
    has_many :accounts
end
