FastGettext.add_text_domain 'app', :path => 'config/locales', :type => :po
FastGettext.default_available_locales = ['en','es','pt'] #all you want to allow
FastGettext.default_text_domain = 'app'