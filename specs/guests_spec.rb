require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../rooms.rb')

class GuestsTest < MiniTest::Test

  def setup()


    @guest1 = Guests.new("John", 50, "Numb")
    @guest2 = Guests.new("Marie", 20, "Sandstorm")
    @guest3 = Guests.new("Paul", 40, "Tik Tok")
    @guest4 = Guests.new("Megan", 70, "Blow shit up")
    @guest5 = Guests.new("Mike", 10, "Gimme a Call")
    @guest6 = Guests.new("Nancy", 20, "Not a problem")
    @guest7 = Guests.new("Connor", 45, "Encore")
    @guest8 = Guests.new("Caitlin", 60, "Ambient 24hr rain")
    @guest9 = Guests.new("Peter", 60, "Forrest Sounds for Sleeping")
    @guest10 = Guests.new("Rebecca", 20, "Beastie Boys")

    @party1 = [@guest1, @guest2, @guest3]
    @party2 = [@guest4, @guest5, @guest6]
    @party3 = [@guest7, @guest8]
    @party4 = [@guest9, @guest10]
  end

  def test_guest7_has_name()
    actual = @guest1.name
    assert_equal("John", actual)
  end
  def test_guest5_has_name()
    actual = @guest5.name
    assert_equal("Mike", actual)
  end

  def test_guest1_has_money()
    assert_equal(50, @guest1.money)
  end

  def test_guest4_has_favourite_song()
    assert_equal("Blow shit up", @guest4.favourite_song)
  end

  def test_party_size_count
    actual = (@party1).count
    assert_equal(3, actual)
  end




end
