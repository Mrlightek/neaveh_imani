module LightekVpm
  module Generators
    # Some helpers for generating scaffolding
    module GeneratorHelpers

attr_accessor :options, :attributes

  private

  def model_columns_for_attributes
    class_name.constantize.columns.reject do |column|
      column.name.to_s =~ /^(id|user_id|created_at|updated_at)$/
    end
  end

    def editable_attributes
      model_columns = class_name.constantize.columns
      model_columns.reject { |c| %w[id created_at updated_at].include?(c.name) }
    end

    def editable_attribute_names
      editable_attributes.map(&:name).map { |attr| ":#{attr}" }.join(', ')
    end
      
def view_files
    actions = %w(index new edit _form)
    actions << 'show' if show_action?
    actions
  end

  def all_actions
    actions = %w(index new create edit update destroy)
    actions << 'show' if show_action?
    actions
  end

  def controller_methods(dir_name)
    all_actions.map do |action|
      read_template("#{dir_name}/#{action}.rb")
    end.join("n").strip
  end

  def read_template(relative_path)
    ERB.new(File.read(source_path(relative_path)), nil, '-').result(binding)
  end

  def source_path(relative_path)
    File.expand_path(File.join("../templates/", relative_path), __FILE__)
  end
  
    end
  end
end