class Course < ApplicationRecord
    validates :title,  presence: true
    validates :description, presence: true, length: { :minimum => 5 }
    validates :instrument,  presence: true
    validates :genre,  presence: true
    validates :price,  presence: true
    
    def to_s
        title
    end
    has_rich_text :description
    
    belongs_to :user
end
