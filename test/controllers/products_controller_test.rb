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
      post :create, product: { category: @product.category, codeProduct: @product.codeProduct, codeProvider: @product.codeProvider, cost: @product.cost, description: @product.description, details: @product.details, expiredDate: @product.expiredDate, image: @product.image, inventary: @product.inventary, isActive: @product.isActive, isExcent: @product.isExcent, isInventary: @product.isInventary, price1: @product.price1, price2: @product.price2, price3: @product.price3, subcategory: @product.subcategory, unitSize: @product.unitSize }
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
    patch :update, id: @product, product: { category: @product.category, codeProduct: @product.codeProduct, codeProvider: @product.codeProvider, cost: @product.cost, description: @product.description, details: @product.details, expiredDate: @product.expiredDate, image: @product.image, inventary: @product.inventary, isActive: @product.isActive, isExcent: @product.isExcent, isInventary: @product.isInventary, price1: @product.price1, price2: @product.price2, price3: @product.price3, subcategory: @product.subcategory, unitSize: @product.unitSize }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
