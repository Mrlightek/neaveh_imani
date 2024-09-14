json.extract! application_setting, :id, :name, :logo_location, :tag_line, :company_name, :created_at, :updated_at
json.url application_setting_url(application_setting, format: :json)
