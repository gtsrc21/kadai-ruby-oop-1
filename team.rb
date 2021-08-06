# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate
    return (win.to_f / (win.to_f + lose.to_f))
  end
  
  def show_team_result
    puts "#{self.name}　の2020年の成績は　#{self.win}勝　#{self.lose}敗　#{self.draw}分、勝率は　#{calc_win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入
name_array = ["giants", "tigers", "dragons", "baystars", "carp", "swallows"]
result_array = [["Giants", 67, 45, 8],
                ["Tigers", 60, 53, 7],
                ["Dragons", 60, 55, 5],
                ["BayStars", 56, 58, 6],
                ["Carp", 52, 56, 12],
                ["Swallows", 41, 69, 10]]

(0..5).each do |i|
  var ="@team_" << name_array[i]
  value = "Team.new(*#{result_array[i]})"
  eval("#{var} = #{value}")
end

# インスタンスの使用
name_array.each do |name|
  eval("@team_#{name}.show_team_result")
end
