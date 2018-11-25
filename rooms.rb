class Rooms

  attr_accessor :capacity, :playlist, :entry_fee, :till

  def initialize(capacity, playlist, entry_fee)
    @capacity = capacity
    @playlist = playlist
    @entry_fee = entry_fee
    @number_in_room = []
  end

  def number_of_guests_in_room?
    return @number_in_room.size
  end

  def check_in_party(party, room)
    if room.capacity >= party.length
      return (party.push(@number_in_room)).length
      if room.capacity <= party.length
      end
    end
  end

  def check_out_party(party, room)
    @number_in_room.delete(party)
  end

  def enough_money_for_room(party, room)
    total = 0
    for guest in party
      total += guest.money
    end
    if total >= room.entry_fee
      return true
    else
      return false
    end
  end

  def charge_for_room(party, room)
    total = 0
    for guest in party
      total += guest.money
    end
    total -= room.entry_fee
  end

  def guest_song(party, room)
    for guest in party
      guests_fav = guest.favourite_song
      for song in playlist
        rooms_song = song
        if guests_fav == rooms_song
        return "Whoo"
      end
      end
    end
    return false
  end


end
