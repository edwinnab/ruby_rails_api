class ProductsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    wrap_parameters format:[]
    #GET /products
    def index 
        products = Product.all
        render json: products, except: [:created_at, :updated_at]
    end

    #GET /products/id
    def show 
        product = Product.find_by(id: params[:id])
        if product
            render json: product, only: [:id, :name, :platform, :version]
        else
            render json: {error: "Product Not Found"}, status: :not_found
        end
    end 

    #POST /products
    def create 
        product = Product.create!(product_params)
        render json: product, status: :accepted
    end

    def update
        product = Product.find_by(id: params[:id])
        if product
            product.update(product_params)
            render json: product, status: :accepted
        else
            render json: {error: "production not found"}, status: :not_found 
        end
    end

    def destroy
        product = Product.find_by(id: params[:id])
        if product
            product.destroy
            head :no_content
            # render json: product, status: :ok
        else
            render json: {error: "Product Not Found"}, status: :not_found
        end
        
    end

    private
    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def product_params
        params.permit(:name, :platform, 
            :serial, :manufacturer, :version)
    end
end
