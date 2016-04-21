require 'itextomml'

TexParser = Itex2MML::Parser.new

class Jekyll::BlockMathML < Liquid::Block
  def initialize tag_name, markup, tokens
    markup.scan(Liquid::TagAttributes) { |key, value| @attributes[key.to_sym] = value }

    super
  end
  
  def render context
    TexParser.block_filter super
  end
end

class Jekyll::InlineMathML < Liquid::Block
  def initialize tag_name, markup, tokens
    markup.scan(Liquid::TagAttributes) { |key, value| @attributes[key.to_sym] = value }

    super
  end
  
  def render context
    TexParser.inline_filter super
  end
end

Liquid::Template.register_tag "math", Jekyll::BlockMathML
Liquid::Template.register_tag "m", Jekyll::InlineMathML
