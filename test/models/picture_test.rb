# frozen_string_literal: true

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  def teardown
    @picture.destroy rescue nil
  end

  test 'Set file content_type and size' do
    @picture = create_picture

    assert_equal "image/png", @picture.data_content_type
    assert_equal 'rails.png', @picture.data_file_name
    assert_equal 6646, @picture.data_file_size

    case CKEDITOR_BACKEND
    when :dragonfly
      assert @picture.url_thumb.include?('thumb_rails')
    when :active_storage
      assert @picture.url_thumb =~ /\/representations\/.*\/rails.png/
    when :shrine
      assert @picture.url_thumb =~ /\S{32}\.png/
    else
      assert @picture.url_thumb.include?('thumb_rails.png')
    end

    assert_equal 6646, @picture.data_file_size
    
    if @picture.has_dimensions?
      assert_equal 50, @picture.width
      assert_equal 64, @picture.height
    end
  end
end
