class Faculty < ApplicationRecord
    # Relationships
    belongs_to :department
    has_many :assignments
    has_many :courses, through: :assignments
  
    # Scopes
    # 1. `alphabetical` [order]
    scope :alphabetical, -> { order("first_name, last_name") }

    # 2. `active`       [where]
    scope :active, -> { where(active: true) }

    # Validations
    # 1. must have first, last names
    validates_presence_of :first_name, :last_name
    # 2. rank must be either `Assistant Professor`, `Associate Professor`, or `Professor'
    validates_inclusion_of :rank, in: %w["Assistant Professor", "Associate Professor", "Professor"]
end
