require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { brand: @product.brand, category_2: @product.category_2, category_one: @product.category_one, current_prive: @product.current_prive, description: @product.description, image_four: @product.image_four, image_one: @product.image_one, image_three: @product.image_three, image_two: @product.image_two, name: @product.name, original_price: @product.original_price, percentage_off: @product.percentage_off, product_url: @product.product_url, season: @product.season }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { brand: @product.brand, category_2: @product.category_2, category_one: @product.category_one, current_prive: @product.current_prive, description: @product.description, image_four: @product.image_four, image_one: @product.image_one, image_three: @product.image_three, image_two: @product.image_two, name: @product.name, original_price: @product.original_price, percentage_off: @product.percentage_off, product_url: @product.product_url, season: @product.season }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
