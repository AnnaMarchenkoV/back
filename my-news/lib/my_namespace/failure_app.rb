module MyNamespace
    class FailureApp < Devise::FailureApp
        def respond
            json_failure
        end
        
        def json_failure
            self.status = 401
            self.content_type = 'application/json'
            self.response_body = "{'error' : 'authentication error'}"
        end
    end
end