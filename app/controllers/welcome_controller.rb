class WelcomeController < ApplicationController

	def index
		
	end

	def shop
		@products = Product.all
	end

	def amazon_api
		req = Vacuum.new
		req.configure(
    		aws_access_key_id:     'AKIAJNNLLDHOXBNVANCQ',
    		aws_secret_access_key: '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',
    		associate_tag:         'tag'
		)
		params = {'SearchIndex' => 'Apparel','Keywords' => 'Armani' }
		@res = req.item_search(query: params)
		@res.to_h
	end

end


