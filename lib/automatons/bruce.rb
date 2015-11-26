class Bruce < Automaton
	def prepare_to_play
		@channel = 4
	end
	def move
		@piece = (self.team_name == "ex") ? "x" : "o"
    @opponent_piece = (self.team_name == "ex") ? "o" : "x"
    @channel = nil
    best_channel("#{@piece}#{@piece}#{@piece} ")
		best_channel(" #{@piece}#{@piece}#{@piece}")
		best_channel("#{@piece} #{@piece}#{@piece}")
		best_channel("#{@piece}#{@piece} #{@piece}")
    unless @channel
      best_channel("#{@opponent_piece}#{@opponent_piece}#{@opponent_piece} ")
  		best_channel(" #{@opponent_piece}#{@opponent_piece}#{@opponent_piece}")
  		best_channel("#{@opponent_piece} #{@opponent_piece}#{@opponent_piece}")
  		best_channel("#{@opponent_piece}#{@opponent_piece} #{@opponent_piece}")
    	unless @channel
        best_channel(" #{@piece}#{@piece} ")
        best_channel(" #{@piece} #{@piece}")
        best_channel("#{@piece} #{@piece} ")
        best_channel("#{@piece}  #{@piece}")
        best_channel("  #{@piece}#{@piece}")
        best_channel("#{@piece}#{@piece}  ")
        unless @channel
          best_channel(" #{@opponent_piece}#{@opponent_piece} ")
          best_channel(" #{@opponent_piece} #{@opponent_piece}")
          best_channel("#{@opponent_piece} #{@opponent_piece} ")
          best_channel("#{@opponent_piece}  #{@opponent_piece}")
          best_channel("  #{@opponent_piece}#{@opponent_piece}")
          best_channel("#{@opponent_piece}#{@opponent_piece}  ")
          unless @channel
            best_channel("#{@piece}    ")
            best_channel(" #{@piece}   ")
            best_channel("  #{@piece}  ")
            best_channel("    #{@piece}")
            unless @channel
              best_channel("#{@opponent_piece}    ")
              best_channel(" #{@opponent_piece}   ")
              best_channel("  #{@opponent_piece}  ")
              best_channel("    #{@opponent_piece}")
              unless @channel
                if @game.rack.playable_cells[3][0]
                  @channel = @game.rack.playable_cells[3][0].to_i
                elsif @game.rack.playable_cells[2][0]
                  @channel = @game.rack.playable_cells[2][0].to_i
                elsif @game.rack.playable_cells[4][0]
                  @channel = @game.rack.playable_cells[4][0].to_i
                elsif @game.rack.playable_cells[2][0]
                  @channel = @game.rack.playable_cells[2][0].to_i
                else
                  @channel = @game.rack.playable_cells[0][0].to_i
                end
              end
            end
          end
        end
    	end
    end
	puts @channel
	@channel
	end
	def best_channel(pattern)
		locs = @game.rack.find_locations(pattern)
    return nil if locs.empty?
    playable = locs.flatten.uniq.map(&:address) & @game.rack.playable_cells
    return nil if playable.empty?
    @channel = playable[0][0].to_i
	end
end
