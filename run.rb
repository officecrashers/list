require 'yaml'
Dir['../twofactorauth/_data/*.yml'].each do |d|
  thing = YAML.load_file(d)
  begin
    thing['websites'].each do |web|
      t = web['twitter']
      if t== nil || t == ""
        next
      end
      n = web['name']
      u = web['url']
      puts "<tr><td><a href=\"#{u}\">#{n}</a></td><td><a href=\"https://twitter.com/share?url=http%3A%2F%2Fofficecrashe.rs&text=%40#{t}+Do+you+allow+office+crashing?&hashtags=officecrashers\">Ask Them To Let Us Know!</a></td></tr>"
    end
  rescue 
  end

end
