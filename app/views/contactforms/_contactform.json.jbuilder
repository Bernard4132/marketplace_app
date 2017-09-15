json.extract! contactform, :id, :name, :email, :phone, :message, :created_at, :updated_at
json.url contactform_url(contactform, format: :json)
