class PostSerializer < ActiveModel::Serializer
  attributes :title, :body, :dom_id, :author_name

  def author_name
    object.user.name
  end

  def dom_id
    record_identifier.dom_id(object)
  end

  private

  def record_identifier
    @record_identifier ||= Class.new do
      include ActionController::RecordIdentifier
    end.new
  end
end
