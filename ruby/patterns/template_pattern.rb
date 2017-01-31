class ReportTemplate
  attr_accessor :title, :text

  def initialize(title, text)
    @title = title
    @text  = text
  end

  def build_header
    raise "Cannot be build via base class"
  end

  def build_footer
    raise "Cannot be build via base class"
  end

  def build_content
    raise "Cannot be build via base class"
  end

  def output
    build_header
    build_content
    build_footer
  end
end


class HtmlReport < ReportTemplate
  def build_header
    p "<html><head>#{@title}</head>"
  end


  def build_content
    p "<body><p>"
    @text.each do |row|
      p "<p>#{row}</p>"
    end
    p "</p></body>"
  end
  def build_footer
    p "</html>"
  end
end

class PlainTextReport < ReportTemplate

  def build_header
    p "*****#{@title}********"
  end

  def build_content
    p "____"
    @text.each do |row|
      p row
    end
    p "____"
  end

  def build_footer
    p "*****END********"
  end

end

# Execute
x = ["a", "b", "c"]
r = HtmlReport.new("hello-header", x)
r.output


r1 = PlainTextReport.new("hello-header", x)
r1.output
