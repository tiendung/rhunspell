Gem::Specification.new do |s|
  s.name = %q{rhunspell}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nguyen Tien Dung"]
  s.date = %q{2008-09-06}
  s.description = %q{Simplest Ruby binding for Hunspell spelling checking library}
  s.email = ["dungtn@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/rhunspell.rb", "lib/rhunspell/version.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_helper.rb", "test/test_rhunspell.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.html.erb"]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/tiendung/rhunspell}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rhunspell}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Simplest Ruby binding for Hunspell spelling checking library}
  s.test_files = ["test/test_helper.rb", "test/test_rhunspell.rb"]
  s.add_dependency("RubyInline", ["> 0.0.0"])
end
