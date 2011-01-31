module Web.Page where
import General.Web

header version resources query = ""
  ++ "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>\n    <head profile='http://a9.com/-/spec/opensearch/1.1/'>\n        <meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1' />\n        <title>"
  ++& query
  ++ "Hoogle</title>\n        <link type='text/css' rel='stylesheet' href='"
  ++& resources
  ++ "/hoogle.css?version="
  ++% version
  ++ "' />\n        <link type='image/png' rel='icon' href='"
  ++& resources
  ++ "/favicon.png' />\n        <link type='application/opensearchdescription+xml' rel='search' href='"
  ++& resources
  ++ "/search.xml' title='Hoogle' />\n        <script type='text/javascript' src='"
  ++& resources
  ++ "/jquery-1.4.2.js'> </script>\n        <script type='text/javascript' src='"
  ++& resources
  ++ "/jquery.cookie.js'> </script>\n        <script type='text/javascript' src='"
  ++& resources
  ++ "/hoogle.js?version="
  ++% version
  ++ "'> </script>\n    </head>\n    <body>\n<div id='links'>\n    <span id='instant' style='display:none;'><a href='javascript:setInstant()'>\n        Instant is <span id='instantVal'>off</span></a> |</span>\n    <span id='plugin' style='display:none;'><a href='javascript:searchPlugin()'>Search plugin</a> |</span>\n    <a href='http://www.haskell.org/haskellwiki/Hoogle'>Manual</a> |\n    <a href='http://www.haskell.org/'>haskell.org</a>\n\n</div>\n<form action='.' method='get' id='search'>\n    <a id='logo' href='http://haskell.org/hoogle/'>\n        <img src='"
  ++& resources
  ++ "/hoogle.png' width='160' height='58' alt='Hoogle' />\n    </a>\n    <input name='hoogle' id='hoogle' class='HOOGLE_REAL' type='text' autocomplete='off' value='"
  ++& query
  ++ "' />\n    <input id='submit' type='submit' value='Search' />\n</form>\n<div id='body'>\n"

footer version = ""
  ++ "        </div>\n        <p id='footer'>&copy; <a href='http://community.haskell.org/~ndm/'>Neil Mitchell</a> 2004-2011, version "
  ++& version
  ++ "</p>\n    </body>\n</html>\n"

welcome = ""
  ++ "<h1><b>Welcome to Hoogle</b></h1>\n<p>\n    Hoogle is a Haskell API search engine, which allows you to search many standard Haskell libraries\n    by either function name, or by approximate type signature.\n</p>\n<p id='example'>\n    Example searches:<br/>\n     <a href='?hoogle=map'>map</a>\n<br/>\n     <a href='?hoogle=%28a+-%3e+b%29+-%3e+%5ba%5d+-%3e+%5bb%5d'>(a -&gt; b) -&gt; [a] -&gt; [b]</a>\n<br/>\n     <a href='?hoogle=Ord+a+%3d%3e+%5ba%5d+-%3e+%5ba%5d'>Ord a =&gt; [a] -&gt; [a]</a>\n<br/>\n     <a href='?hoogle=Data%2eMap%2einsert'>Data.Map.insert</a>\n<br/>\n\t<br/>Enter your own search at the top of the page.\n</p>\n<p>\n    The <a href='http://www.haskell.org/haskellwiki/Hoogle'>Hoogle manual</a> contains more details,\n    including further details on search queries, how to install Hoogle as a command line application\n    and how to integrate Hoogle with Firefox/Emacs/Vim etc.\n</p>\n<p>\n    I am very interested in any feedback you may have. Please\n    <a href='http://community.haskell.org/~ndm/contact/'>email me</a>, or add an entry to my\n    <a href='http://code.google.com/p/ndmitchell/issues/list'>bug tracker</a>.\n</p>\n"
