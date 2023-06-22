class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
  
    # validate :sufficiently_clickbait
  
    # def sufficiently_clickbait
    #   clickbait_phrases = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    #   unless clickbait_phrases.any? { |phrase| title.include?(phrase) }
    #     errors.add(:title, "Title is not sufficiently clickbait-y")
    #   end
    # end
  end
  