# frozen_string_literal: true

class Article < ApplicationRecord
  ALLOWED_STATUS_VALUES = %w[published unpublished].freeze
  validates_presence_of :title
  # validates_uniqueness_of :title
  validates_length_of :title, minimum: 5, maximum: 15
  validates :status, inclusion: { in: ALLOWED_STATUS_VALUES }
end
