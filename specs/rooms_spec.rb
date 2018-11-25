require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')

class RoomsTest < MiniTest::Test

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

    @room1 = Rooms.new(2, ["Numb", "Jelly", "We are Human"], 25)
    @room2 = Rooms.new(6, ["Forrest Sounds for Sleeping", "Ambient 24hr rain"], 120)
    @room3 = Rooms.new(4, ["Not a Problem", "Encore"], 80)
    @room4 = Rooms.new(1, ["Tik Tok", "Gimme a Call"], 80)

    @playlist1 = Songs.new(["Numb", "Jelly", "We are Human"])
    @playlist2 = Songs.new(["Forrest Sounds for Sleeping", "Ambient 24hr rain"])
    @playlist3 = Songs.new(["Not a Problem", "Encore"])
    @playlist4 = Songs.new(["Tik Tok", "Gimme a Call"])
  end

  def test_room1_has_capacity
    assert_equal(2, @room1.capacity)
  end

  def test_room2_has_playlist
    assert_equal(["Forrest Sounds for Sleeping", "Ambient 24hr rain"], @room2.playlist)
  end

  def test_room3_has_entry_fee
    assert_equal(80, @room3.entry_fee)
  end

  def test_room_has_zero_count
    count = @room1.number_of_guests_in_room?
    assert_equal(0, count)
  end

  def test_check_in_out_party()
    result = @room1.check_in_party(@party3, @room1)
    assert_equal(3, result)
    result = @room1.check_out_party(@party1, @room1)
    assert_nil(nil, result)
  end

  def test_more_guests_than_space_in_room
    result = @room4.check_in_party(@party2, @room4)
    assert_nil(nil, result)
  end

  def test_guests_have_money_for_room?
    result = @room3.enough_money_for_room(@party1, @room3)
    assert_equal(true, result)
  end

  def test_guests_dont_have_money_for_room?
    result = @room2.enough_money_for_room(@party2, @room2)
    assert_equal(false, result)
  end

  def test_guests_leftover_money_after_payment
    result = @room3.charge_for_room(@party1, @room3)
    assert_equal(30, result)
  end

  def test_room_has_guest_favourite_song
    result = @room3.guest_song(@party3, @room3)
    assert_equal("Whoo", result)
  end





end
