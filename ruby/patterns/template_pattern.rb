class Report
  attr_accessor :title, :text

  def initialize(title, text)
    @title = title
    @text  = text
  end

  def output
    p "<html>"
    p "<head> #{@title}</head>"
    p "<body>"
    @text.each do |row|
      p "<p>#{row}</p>"
    end
    p "</body></html>"
  end
end

x = ["a", "b", "c"]
r = Report.new("hello", x)
r.output
