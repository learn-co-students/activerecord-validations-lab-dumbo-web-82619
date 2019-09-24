class ClickbaitValidator < ActiveModel::Validator
    def validator(record)
        if record.title.include?("Won't Believe", "Secret", "Top[number]", "Guess")
            record.errors[:title] << "This is clickbait!"
        end
    end
end