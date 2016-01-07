class TimeService
  # 音を出してよい時間帯かどうかを判定する
  # 深夜・早朝はルンバを動かさないといった用途を想定
  def self.can_make_noise?
    Time.current.hour.between?(8, 21)
  end
end
