class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @locked = true
    @diary = diary
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    fail "Go away!" if @locked
    # Returns the diary's contents if the diary is unlocked
    @diary.read
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end