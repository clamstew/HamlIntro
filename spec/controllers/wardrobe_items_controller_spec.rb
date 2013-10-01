require 'spec_helper'

describe WardrobeItemsController do
  describe 'GET index' do
    it "assigns all wardrobe items as @wardrobe_items" do
      wardrobe_item = WardrobeItem.create
      get :index

      expect(assigns('wardrobe_items')).to eq([wardrobe_item])
    end
  end

  describe 'GET show' do
    it "assigns the requested wardrobe item as @wardrobe_item" do
      wardrobe_item = WardrobeItem.create
      get :show, { id: wardrobe_item.id }

      expect(assigns('wardrobe_item')).to eq(wardrobe_item)
    end
  end
end
