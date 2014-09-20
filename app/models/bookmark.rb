class Bookmark < ActiveRecord::Base

  belongs_to :user

  validates :title, length: { minimum: 10 }, presence: true

  validates :url, format: { with: Regexp.new(URI::regexp(%w(http https)))}, presence: true
  
end
