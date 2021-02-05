# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = ["Red", "Blue", "Yellow", "Pink", "Purple", "Black", "White"]
    validates :birth_date, presence: true
    validates :color, presence: true, inclusion: {in: COLORS}
    validates :name, presence: true
    validates :sex, presence: true, length: {maximum: 1}, inclusion: {in: %w(M F)}
    validates :description, presence: true

    def age
       p Time.now.year - self[:birth_date].year
    end

    has_many :cat_rental_requests, dependent: :destroy
end
