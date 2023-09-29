# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "action_view"


class Cat < ApplicationRecord
    CAT_COLORS = ["orange", "pink", "white", "blue", "red"]
    SEX_OPTIONS = ["M","F"]
  validates :birth_date, :color, :name, :sex, presence:true
  validates :color, inclusion: {in: CAT_COLORS}
  validates :sex, inclusion: {in: SEX_OPTIONS}
  validate :birth_date_cannot_be_future
  include ActionView::Helpers::DateHelper

    def birth_date_cannot_be_future
        (Date.today <=> birth_date) != -1
    end

    def age
        time_ago_in_words(birth_date)
        # age_words
    end




end
