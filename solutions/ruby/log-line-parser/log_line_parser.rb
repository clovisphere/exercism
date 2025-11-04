class LogLineParser
  attr_reader :message, :log_level

  def initialize(line)
    @line = line
    @message = @line.gsub(/\[.*?\]: /, '').strip
    @log_level = @line[/(?<=\[).*?(?=\])/].downcase
  end

  def reformat
    "#{@message} (#{@log_level})"
  end
end
