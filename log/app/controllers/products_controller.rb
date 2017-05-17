class ProductsController < ApplicationController

	def index
		@productnames = []
		@productnames.push("--Select OS--")
		@productnames.push("iOS")
		@productnames.push("Android M")
		@productnames.push("Android L")
		@productnames.push("Android 5.0")
		@productnames.push("Android")
		#for i in 0..Product.all.collect(&:name).size
		#	@productnames.push(Product.all.collect(&:os)[i])
		#end

		if (params[:name] && Product.all.collect(&:os).include?(params[:name][:name]))
     		@products = Product.where("os = ? ", params[:name][:name])
		elsif params[:serachbtn] == 'search'
        	@products = Product.search(params[:search])
	    elsif params[:serachbtn] == 'showall'
	    	params[:search] = ''
	    	@products = Product.all
	    else
      		@products = Product.all
	    end

		
    	end

	def new
	end

	def show
		@product = Product.find(params[:id])

		end

	def edit
	  @product = Product.find(params[:id])
	end
	
	def update
  		@product = Product.find(params[:id])
 
		if @product.update(product_params)
		    redirect_to @product
		else
		    render 'edit'
		end
 	end 

	def create 
	 	@product = Product.new(product_params)
	 	
	  	if @product.save
	    	redirect_to @product
	  	else
	    	render 'new'
	  	end
	end


	def destroy
    	@product = Product.find(params[:id])
    	@product.destroy
 
    	redirect_to products_path
  	end

	private
  	def product_params
    	params.require(:product).permit(:productId, :quantity, :name, :price, :modelNumber, :make, :color, :storage, :os, :specification, :image )
  	end
end
