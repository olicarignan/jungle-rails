require "rails_helper"

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it "is a valid product" do
      @product = Product.new
      @category = Category.new
      @category.name = "test"
      @product.category = @category
      @product.name = "test"
      @product.price = 1000
      @product.quantity = 1

      expect(@product.valid?).to be true
    end

    it "belongs to a category" do
      @product = Product.new
      @category = Category.new
      @category.name = "test"
      @product.category = @category

      expect(@product.category.valid?).to be true
    end

    it "has a valid name" do
      @product = Product.new
      @product.name = nil
      @product.valid?
      expect(@product.errors[:name]).to include("can't be blank")
    end

    it "has a valid price" do
      @product = Product.new
      @product.price = nil
      @product.valid?
      expect(@product.errors[:price]).to include("can't be blank")
    end

    it "has a valid quantity" do 
      @product = Product.new
      @product.quantity = nil
      @product.valid?
      expect(@product.errors[:quantity]).to include("can't be blank")
    end
  end 
end