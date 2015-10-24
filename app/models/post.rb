class Post < Ohm::Model

  attribute :token
  attribute :timestamp
  attribute :user_id
  attribute :user_name
  attribute :command
  attribute :text
  attribute :trigger_word
end