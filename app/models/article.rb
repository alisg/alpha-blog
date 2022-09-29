class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maxiimum: 100}
    validates :description, presence: true, length: {minimum: 10, maxiimum: 300}
end