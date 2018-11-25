require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')
require_relative('../rooms.rb')

class SongsTest < MiniTest::Test

  def setup()
    @playlist1 = Songs.new(["Numb", "Jelly", "We are Human"])
    @playlist2 = Songs.new(["Forrest Sounds for Sleeping", "Ambient 24hr rain"])
    @playlist3 = Songs.new(["Not a Problem", "Encore"])
    @playlist4 = Songs.new(["Tik Tok", "Gimme a Call"])
  end

  def test_songs_has_playlist()
    assert_equal(["Numb", "Jelly", "We are Human"], @playlist1.playlist)
  end

end
