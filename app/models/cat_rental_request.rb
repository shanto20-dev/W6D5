class CatRentalRequest < ApplicationRecord
    validates :cat_id, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :status, presence: true, inclusion: {in: %w(PENDING APPROVED DENIED)}
    
    belongs_to :cat

    def overlapping_requests
        CatRentalRequest
        .where.not("(start_date BETWEEN (?).start_date AND (?).end_date) OR (end_date BETWEEN (?).start_date AND (?).end_date)", self, self, self, self)
    end
end
