# Copyright (c) Jobcase, Inc. All rights reserved.

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require 'yelp/fusion/responses/base'
require 'yelp/fusion/responses/models/categories'
require 'yelp/fusion/responses/models/location'
require 'yelp/fusion/responses/models/hours'

module Yelp
  module Fusion
    module Responses
      module Models
        class Business < Responses::Base
          attr_reader :categories, :coordinates, :display_phone,
                      :distance, :id,
                      :alias, :image_url, :is_closed, :location,
                      :name, :phone, :price,
                      :rating, :review_count, :url, :transactions,
                      :hours, :is_claimed, :photos
          def initialize(json)
            super(json)
            @categories = parse(@categories, Categories)
            @location = parse(@location, Location)
            @hours = parse(@hours, Hours)
            @coordinates = parse(@coordinates, Center)
          end
        end
      end
    end
  end
end