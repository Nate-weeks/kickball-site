require_relative "./team_data"
require_relative "player"
require'pry'

class Team
  attr_reader :name, :all_teams

  def initialize(name)
    @name = name
  end

  def self.all
    @all_teams = []
    TeamData::ROLL_CALL.each do |name, value|
      all_teams << Team.new(name)
    end
    @all_teams
  end

  # def players(team)
  #   @team_mates = []



end
