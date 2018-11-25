require_relative "./team_data"
require'pry'

class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    @all_players = []
    TeamData::ROLL_CALL.each do |team_name, value|
      value.each do |position, name|
        @all_players << Player.new(name, position, team_name)
      end
    end
    @all_players
  end
end
