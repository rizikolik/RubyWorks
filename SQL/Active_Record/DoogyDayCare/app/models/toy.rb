class Toy < ApplicationRecord
    belongs_to :dog ,
     primary_key: :id,
      foreign_key: :dog_id,
      class_name: :Dog

      has_one :home,
      through: :dog,
      source: :home

end