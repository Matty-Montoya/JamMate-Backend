class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :instrument, :genre, :user_id
end
