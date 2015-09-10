class Project < ActiveRecord::Base
  validates :name, presence: true
  has_many :tasks

  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: proc { |attributes| attributes['description'].blank? }
end
