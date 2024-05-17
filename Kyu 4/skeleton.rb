require 'rspec/autorun'

class BowlingGame
  # Scoring
  # 1 point per pin
  # Spare ([N, /] ): 10 points + value of next shot
  # Strike ( [X, -] ): 10 points + sum of the values of the next 2 shots

  attr_accessor :score

  def initialize(*args)
    @all_frames = [*args]
    @score = 0
  end

  def calculate_score
    return 300 if @all_frames.all?{|frame| frame.include?('X')}

    @all_frames.each_with_index do |frame,idx|
        if idx == 9
          @score += final_frame(frame)
        elsif strike?(frame)
          @score+= calc_strike(idx)
        elsif spare?(frame)
          @score += calc_spare(idx)
        elsif zero?(frame)
          @score += 0
        else
          @score += simple_sum(frame)
        end
      end
    
    return @score

  end 


  def strike?(frame)
    return true if frame[0] == 'X'  
  end

  def spare?(frame)
    return true if frame[1] == '/'
  end

  def zero?(frame)
    return true if frame[0] == '-' && frame[1] == '-'
  end

  def simple_sum(frame)
    frame[0].to_i + frame[1].to_i
  end

  # def print_frames
  #   p @all_frames
  # end
  def final_frame(frame)
    if frame.length == 2
      simple_sum(frame)
    elsif frame[1] == '/'
        if frame[2] == 'X'
          30
        else
          10 + frame[2].to_i
        end
    elsif frame[0] == 'X'
      if frame[1] == 'X'
        if frame[2] =='X'
          60
        else
          30
        end
      elsif frame[2] == '/'
        20
      else
        10 + (frame[1].to_i + frame[2].to_i)
      end
    end 
  end
          

  def calc_spare(idx)
    if idx != 9
      if @all_frames[idx+1].include?('X')
        20
      else
        10 + @all_frames[idx+1][0].to_i
      end
    end
  end

  def calc_strike(idx)
      if @all_frames[idx+1].include?('X')
        if @all_frames[idx+2].include?('X')
          30
        else
          20 + @all_frames[idx+2][0].to_i
        end
      elsif @all_frames[idx+1].include?('/')
        20
      else
        10 + @all_frames[idx+1][0].to_i + @all_frames[idx+1][1].to_i
      end
  end

end

# bowl = BowlingGame.new(['4', '3'], ['2', '1'], ['2', '3'], ['7', '1'], ['3', '6'], ['2', '2'], ['8', '1'], ['6', '3'], ['2', '3'], ['1', '1'])
# p bowl.calculate_score



describe 'BowlingGame' do
  it 'handles simple scores' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['2', '1'], ['2', '3'], ['7', '1'], ['3', '6'], ['2', '2'], ['8', '1'], ['6', '3'], ['2', '3'], ['1', '1']
      ).calculate_score
    ).to eq 61
  end
  it 'handles zeroes' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['-', '1'], ['2', '-'], ['7', '1'], ['-', '6'], ['2', '-'], ['8', '-'], ['6', '-'], ['-', '-'], ['-', '-']
      ).calculate_score
    ).to eq 40
  end
  it 'handles spares' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['9', '/'], ['2', '-'], ['7', '/'], ['-', '6'], ['2', '/'], ['8', '-'], ['6', '-'], ['-', '-'], ['-', '-']
      ).calculate_score
    ).to eq 69
  end
  it 'handles strikes' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['2', '6'], ['X', '-'], ['7', '2'], ['X', '-'], ['-', '3'], ['X', '-'], ['-', '-'], ['3', '2'], ['1', '1']
      ).calculate_score
    ).to eq 87
  end
  it 'handles spares followed by a strike' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['2', '6'], ['6', '/'], ['X', '-'], ['3', '3'], ['7', '/'], ['2', '1'], ['7', '/'], ['X', '-'], ['3', '2']
      ).calculate_score
    ).to eq 112
  end
  it 'handles strikes followed by a spare' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['2', '6'], ['X', '-'], ['3', '/'], ['3', '3'], ['X', '-'], ['2', '/'], ['7', '/'], ['3', '6'], ['3', '2']
      ).calculate_score
    ).to eq 118
  end
  it 'handles consecutive strikes' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['3', '2']
      ).calculate_score
    ).to eq 135
  end
  it 'handles a spare in the last frame' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['3', '/', '6']
      ).calculate_score
    ).to eq 146
  end
  it 'handles a strike in the last frame' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['X', '7', '2']
      ).calculate_score
    ).to eq 149
  end
  it 'handles a strike followed by a spare in the last frame' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['X', '7', '/']
      ).calculate_score
    ).to eq 150
  end
  it 'handles a perfect game' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', 'X', 'X']
      ).calculate_score
    ).to eq 300
  end
end
