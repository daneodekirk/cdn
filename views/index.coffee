doctype 5
html ->
  head ->
    meta charset: 'utf-8'
    title -> 'Cake'
    link rel: 'stylesheet', href: '/twitter/bootstrap/master/bootstrap.min.css'
    script src: 'http://code.jquery.com/jquery.min.js'

  body ->
    div '.container', ->
      if @error
        section style:'padding:40px 0;', ->
            div 'alert-message block-message error', ->
              p ->
                text "that's a "
                strong '404'
            div 'alert-message block-message warning', ->
              dl ->
                dt 'possible reasons why'
                dd " check the path #{@pathname}"
                dd ->
                  text " make sure it "
                  a href:"https://raw.github.com#{@pathname}", target:'_blank', -> 'exists on GitHub'
                dd ->
                  text "who knows"

                
      section style:'padding-bottom:140px;', ->
        div '.page-header', style:'margin-top:40px;', ->
          h1 ->
            text 'GitHub CDN'
            small ' - for beta testers'
        div '.row', ->
          div '.span-one-third', ->
            h3 -> 'About'
            p 'A simple CDN for GitHub.'
          div '.span-one-third', ->
            h3 -> 'Motivation'
            p 'Github provides raw files but they are sent as text/plain instead of their proper mime/type'
          div '.span-one-third', ->
            h3 -> 'Use'
            ol ->
              li 'Get the raw url of the file'
              li ->
                text 'Replace '
                code ' https://raw.github.com'
                br ->
                text 'with '
                code 'http://cdn.herokuapp.com'
              li "You're done"
      section ->
        div '.page-header', ->
        div '.row', ->
          span '.pull-left.span', -> "built and designed by Dane Odekirk. help out at #{ yield -> a href:'https://github.com/daneodekirk/cdn', -> 'GitHub'}"
          span '.pull-right', -> 'put something interesting here'
            
