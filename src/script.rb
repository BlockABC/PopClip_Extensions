    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "https://eospark.com/search?query={query}"
    query = ENV['POPCLIP_TEXT']
    url.sub!(/\{query\}/,CGI.escape(query))

    %x{open "#{url}"}
