module ApplicationHelper
  def custom_url
    request.port.blank? ? request.host : "#{request.host}: #{request.port}"
  end
end
