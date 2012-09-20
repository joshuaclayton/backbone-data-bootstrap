class PostSerializer < ActiveModel::Serializer
  attributes :title, :body, :dom_id

  def dom_id
    dom_id_manager.dom_id(object)
  end

  private

  def dom_id_manager
    @dom_id_manager ||= Class.new do
      include ActionController::RecordIdentifier
    end.new
  end
end
