class Journal < ActiveRecord::Base
  validates :journal_name, presence: true

  validates :journal_url, :format => {:with => URI::regexp(%w(http https)), :message => "Make sure to begin your url with an http or https"}
  validates :content_guide_url, :format => {:with => URI::regexp(%w(http https)), :message => "Make sure to begin your url with an http or https"}

  validates :journal_topic, presence: true
end
