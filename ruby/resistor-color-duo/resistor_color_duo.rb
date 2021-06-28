class ResistorColorDuo
  def self.value(colors)
    colors[0..1]
      .map(&:capitalize)
      .map { |c| COLOR_MAP.index(c) }
      .map(&:to_s)
      .join
      .to_i
  end

  COLOR_MAP = %w[
    Black Brown Red Orange Yellow Green Blue Violet Grey White
  ].freeze
end