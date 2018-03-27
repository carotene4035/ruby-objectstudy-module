class Schedule
  def scheduled?(schedulable, start_date, end_date)
    puts "This #{schedulable.class} " +
      "is not scheduled\n" +
      " between #{start_date} and #{end_date}"
    false
  end
end


class Bicycle
  attr_reader :schedule, :size, :chain, :tire_size

  # scheduleを注入し、初期値を設定する
  def initialize(args={})
    @schedule = args[:schedule] || Schedule.new
  end

  def schedulable?(start_date, end_date)
    # 自転車を使い始める日から、lead_days（準備期間）を引く
    # そこをstart_dateとし、end_dateまで自転車が使えるかどうかを調べる
    !scheduled?(start_date - lead_days, end_date)
  end

  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  def lead_days
    1
  end
end


require 'date'
starting = Date.parse('2015/09/04')
ending   = Date.parse('2015/09/10')

b = Bicycle.new
# この期間の間、自転車は使用可能ですか？ と聞いている
b.schedulable?(starting, ending)
