module CodeHelper
  def code(*args, &block)
    if block_given?
      raw = String.new(capture(&block))
      language = args.first
    else
      raw = args.first
      language = args.second
    end
    language ||= 'ruby'
    content_tag(:pre, content_tag(:code, raw, :class => "language-#{language.to_s.downcase}"), :class => "pre-#{language}")
  end
  
  def render_code(*args, &block)
    if block_given?
      raw = capture(&block).strip 
      language = args.first
    else
      raw = args.first
      language = args.second
    end
    language ||= 'ruby'
    out = case language
    when 'ruby'
      raw.split(/\n/).map{|l| eval(l.strip.sub(/^=/,''))}.join(' ')
    when 'haml'
      Haml::Engine.new(raw).render
    else
      raw
    end
    "#{out} #{code(raw, language)}".html_safe
  end
end
