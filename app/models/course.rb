class Course < ApplicationRecord
    validates :title, :language, :price, :level, :instrument, :genre,  presence: true 
    validates :description, presence: true, length: { :minimum => 5 }

    def to_s
        title
    end
    has_rich_text :description
    
    belongs_to :user
    
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    LANGUAGES = [:"English", :"Spanish", :"Thai"]
    def self.languages
        LANGUAGES.map { |language| [language, language] }
    end
    
    LEVELS = [:"Beginner", :"Intermediate", :"Advanced"]
    def self.levels
        LEVELS.map { |level| [level, level] }
    end
end
