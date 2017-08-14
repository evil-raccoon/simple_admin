module SimpleAdmin
  class EntityField < Base
    translates :label

    enum display: %i[index form]

    belongs_to :entity

    has_one :entity_field_type, primary_key: :entity_field_type_id, foreign_key: :id
    has_one :entity_field_setting

    def template_path
      "#{entity_field_type.template}/#{display}"
    end
  end
end