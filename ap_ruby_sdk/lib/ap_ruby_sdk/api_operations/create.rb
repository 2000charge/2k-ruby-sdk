module ApRubySdk
  module ApiOperations
    module Create
      module ClassMethods
        def create(params={}, url_prefix=nil, api_secret_key=nil, api_public_key=nil)
          response = ApRubySdk.request(:post, url_with_prefix(url_prefix), api_secret_key, api_public_key, params)
          Util.convert_to_ap_object(response, self.url)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end