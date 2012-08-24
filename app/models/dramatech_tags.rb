module DramatechTags
  include Radiant::Taggable

  class TagError < StandardError; end

  desc %{
    Renders the containing elements only if the page's path is in the Greenroom section of the site.

    *Usage:*
    
    <pre><code><r:if_greenroom>...</r:if_greenroom></code></pre>
  }
  tag 'if_greenroom' do |tag|
    unless tag.locals.page.path.match(/^\/greenroom(\/+.*)*$/).nil?
      tag.expand
    end
  end

  desc %{
    The opposite of the @if_greenroom@ tag.

    *Usage:*
    
    <pre><code><r:unless_greenroom>...</r:unless_greenroom></code></pre>
  }
  tag 'unless_greenroom' do |tag|
    if tag.locals.page.path.match(/^\/greenroom(\/+.*)*$/).nil?
      tag.expand
    end
  end
end
