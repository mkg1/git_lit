require 'minitest/autorun'
require 'minitest/pride'

require './artist.rb'

class AlbumsAndArtistTest < Minitest::Test
  def test_classes_exist
    assert Album
    assert Artist
  end

  def test_can_create_album_and_get_its_attributes
    a = Album.new("Daniel B.", 200, 15)
    assert a
    assert_equal "Daniel B.", a.name
    assert_equal 200, a.inventory
    assert_equal 15, a.price
  end

  def test_can_sell_album
    a = Album.new("Daniel B.", 200, 15)
    a.sell!
    assert_equal 199, a.inventory
  end

  def test_can_sell_albums
    a = Album.new("Daniel B.", 200, 15)
    a.sell!(4)
    assert_equal 196, a.inventory
  end

  def test_can_discount_album
    a = Album.new("Daniel B.", 200, 15)
    a.discount = 0.1
    assert_equal 13.5, a.price 
  end

end
