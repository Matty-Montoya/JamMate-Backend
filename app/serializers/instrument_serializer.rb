class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :instrument, :genre, :user_id
  has_one :user
end
