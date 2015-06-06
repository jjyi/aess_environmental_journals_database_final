class Journal < ActiveRecord::Base
  validates :journal_url, :format => URI::regexp(%w(http https))
  validates :content_guide_url, :format => URI::regexp(%w(http https))
end
