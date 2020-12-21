class Course < ApplicationRecord
    validates :title, :language, :price, :level, :instrument, :genre,  presence: true 
    validates :description, presence: true, length: { :minimum => 5 }

    def to_s
        title
    end
    has_rich_text :description
    
    belongs_to :user
    
    has_many :lessons, dependent: :destroy
    has_many :enrollments
    
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    include PublicActivity::Model
    tracked owner: Proc.new{ |controller, model| controller.current_user }
    
    def bought(user)
        self.enrollments.where(user_id: [user.id], course_id: [self.id].empty?)
    end
    
    LANGUAGES = [:"English", :"Spanish", :"Thai"]
    def self.languages
        LANGUAGES.map { |language| [language, language] }
    end
    
    LEVELS = [:"Beginner", :"Intermediate", :"Advanced"]
    def self.levels
        LEVELS.map { |level| [level, level] }
    end
end
