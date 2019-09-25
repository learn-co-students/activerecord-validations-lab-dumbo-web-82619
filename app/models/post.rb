class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non_Fiction"]}
  validate :clickbait

  def clickbait
    if title.present? && !title.include?("Won't Believe" || "Secret" || "Top #{rand(10..100)}" || "Guess") 
      errors.add(:title)
    end
  end

  
end
