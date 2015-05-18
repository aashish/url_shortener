module ApplicationHelper
  def custom_url
    Rails.env == 'production' ? request.host : "#{request.host}: #{request.port}"
  end
end
