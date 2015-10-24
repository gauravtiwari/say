class Post < Ohm::Model
  include Ohm::Timestamps

  attribute :user_id
  attribute :user_name
  attribute :text
end