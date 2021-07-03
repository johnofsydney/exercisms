class ResistorColorDuo
  def self.value(colors)
    colors
      .first(2)
      .map(&:capitalize)
      .map { |c| COLOR_MAP.index(c) }
      .join
      .to_i
  end

  COLOR_MAP = %w[
    Black Brown Red Orange Yellow Green Blue Violet Grey White
  ].freeze
end