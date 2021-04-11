require 'rails_helper'


RSpec.describe Movie, type: :model do
  # checking model validations
  subject{described_class.new(title: "cenas", rating: 5, genre: "drama")}

    it "title must be present" do
      # subject.title = ""
      expect(subject.title).not_to be_empty
    end

    it "rating must be greater than 0" do
      subject.rating = 0
      expect(subject).to be_valid
    end

    it "rating must be less than or equal to 5" do
      subject.rating = 4
      expect(subject).to be_valid
    end

    it "genre must be present" do
        subject.genre = "drama"
        expect(subject.genre).not_to be_empty
    end
end
