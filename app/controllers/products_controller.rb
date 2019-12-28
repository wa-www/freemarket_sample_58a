class ProductsController < ApplicationController
  # 商品一覧
  def index
    @categories=Category.roots

  end

  # 商品詳細
  def show
    @categories=Category.roots
  end
 
  # 商品出品
  def new
    @product=Product.new
    10.times { @product.product_images.build } #後で考察
    # @product.product_images.build
  end

  # 商品出品
  def create
    binding.pry

    @product = Product.new(product_create_params)

    @product.save
    #@product = Product.create(product_create_params)
    #render :new

  end

  # 商品編集
  def edit
  end

  # 商品編集
  def update
  end

  # 商品詳細
  def itemshow
  end

  # 商品購入確認
  def buy
  end

  def product_create_params
   
    params.require(:product).permit(:name,:description,:price,product_images_attributes:[:image_url])
  end
  
end

