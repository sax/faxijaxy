module FaxiJaxy
  require 'faxijaxy/railtie' if defined?(Rails)
end

module ActionController
  class Base

    private 

    def faxijaxify
      if request.content_type == 'multipart/form-data' && (request.format == :js || request.format == :json)
        # formatting the response as js may wrap the response in <pre>
        response.content_type = nil

        # jquery-form expects the js response to be in a textarea
        response.body = "<textarea>#{response.body}</textarea>"
      end
    end
  end
end