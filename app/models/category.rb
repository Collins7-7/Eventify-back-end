class Category < ApplicationRecord
  has_many :events

  validates :name, inclusion: { in: ["Business", "Technology", "Art Workshops", "Sports", "Music Concerts", "Community"] }
end
