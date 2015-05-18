module ApplicationHelper
  def custom_url
    rails.env == 'production' ? request.host : "#{request.host}: #{request.port}"
  end
end
