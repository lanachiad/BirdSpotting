class Bird < ActiveRecord::Base
  validates :scientific_name, :common_name, :description, :size, :primary_color, :secondary_color, :chest_color, :distinct_pattern, :habitat, :nesting, :call_description, {presence: true}
end
