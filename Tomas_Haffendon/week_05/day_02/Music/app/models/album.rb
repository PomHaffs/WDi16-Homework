# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  title      :text
#  year       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
end
