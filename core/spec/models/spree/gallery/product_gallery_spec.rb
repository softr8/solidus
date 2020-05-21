# frozen_string_literal: true

require 'rails_helper'
require 'spree/testing_support/shared_examples/gallery'

RSpec.describe Spree::Gallery::ProductGallery do
  let(:gallery) { described_class.new(product) }
  let(:product) { create(:product) }

  shared_context 'has multiple images' do
    let(:first_image) { build(:image) }
    let(:second_image) { build(:image) }

    before do
      product.master.images_variants.create(image: first_image)
      product.master.images_variants.create(image: second_image)
    end
  end

  it_behaves_like 'a gallery'
end
