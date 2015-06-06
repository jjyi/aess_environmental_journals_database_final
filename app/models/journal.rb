class Journal < ActiveRecord::Base
  validates :journal_url, :format => {:with => URI::regexp(%w(http https)), :message => "nope"}
  validates :content_guide_url, :format => URI::regexp(%w(http https))
end
