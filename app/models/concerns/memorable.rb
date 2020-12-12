module Helpers
    module InstanceHelpers
        def slug
            self.name.scan(/[a-zA-Z\s]/).join("").gsub(" ","-").downcase
        end
    end
    module ClassHelpers
        def find_by_slug(slugified_name)
            self.all.detect {|item| item.slug == slugified_name}
        end
    end
  end