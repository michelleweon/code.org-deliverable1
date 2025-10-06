class Horse < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :age, presence: true, numericality: { greater_than: 0, less_than: 50 }
  validates :breed, presence: true, length: { minimum: 2, maximum: 50 }
  validates :color, presence: true, length: { minimum: 2, maximum: 30 }
  validates :personality, presence: true, length: { minimum: 10, maximum: 500 }
  validates :bio, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :location, presence: true, length: { minimum: 2, maximum: 100 }
  validates :sex, inclusion: { in: [true, false] }

  # Scopes for filtering
  scope :by_age_range, ->(min_age, max_age) { where(age: min_age..max_age) }
  scope :by_breed, ->(breed) { where("breed ILIKE ?", "%#{breed}%") }
  scope :by_color, ->(color) { where("color ILIKE ?", "%#{color}%") }
  scope :by_location, ->(location) { where("location ILIKE ?", "%#{location}%") }
  scope :opposite_sex, ->(sex) { where(sex: !sex) }

  # Instance methods
  def display_name
    "#{name}, #{age} years old"
  end

  def short_bio
    bio.length > 100 ? "#{bio[0..97]}..." : bio
  end

  def personality_traits
    personality.split(',').map(&:strip)
  end
end
