lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "yard/nrser/cucumber/version"

# module CucumberInTheYARD
#   def self.show_version_changes(version)
#     date = ""
#     changes = []
#     grab_changes = false

#     File.open("#{File.dirname(__FILE__)}/History.txt",'r') do |file|
#       while (line = file.gets) do

#         if line =~ /^===\s*#{version.gsub('.','\.')}\s*\/\s*(.+)\s*$/
#           grab_changes = true
#           date = $1.strip
#         elsif line =~ /^===\s*.+$/
#           grab_changes = false
#         elsif grab_changes
#           changes = changes << line
#         end

#       end
#     end

#     { :date => date, :changes => changes }
#   end
# end

Gem::Specification.new do |s|
  s.name        = ::YARD::NRSER::Cucumber::NAME
  s.version     = ::YARD::NRSER::Cucumber::VERSION
  s.authors     = ["Neil Souza", "Franklin Webber"]
  s.description = %{
    This is my fork of https://github.com/burtlo/yard-cucumber with some changes that I would
    like to consider improvements.
    
    YARD-Cucumber is a YARD extension that processes Cucumber Features, Scenarios, Steps,
    Step Definitions, Transforms, and Tags and provides a documentation interface that allows you
    easily view and investigate the test suite.  This tools hopes to bridge the gap of being able
    to provide your feature descriptions to your Product Owners and Stakeholders.  }
  s.summary     = "Cucumber Features in YARD"
  s.email       = 'neil@neilsouza.com'
  s.homepage    = "http://github.com/nrser/yard-nrser-cucumber"
  s.license     = 'MIT'

  s.platform    = Gem::Platform::RUBY

#   changes = CucumberInTheYARD.show_version_changes(::CucumberInTheYARD::VERSION)

#   s.post_install_message = %{
# (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::)

#   Thank you for installing yard-cucumber #{::CucumberInTheYARD::VERSION} / #{changes[:date]}.

#   Changes:
#   #{changes[:changes].collect{|change| "  #{change}"}.join("")}
# (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::)

# }

  s.add_development_dependency 'rake', '~> 10'

  s.add_dependency 'gherkin', '>= 4.0', '< 6.0'
  s.add_dependency 'cucumber', '>= 2.0', '< 4.0'
  s.add_dependency 'yard', '~> 0.8', '>= 0.8.1'

  s.rubygems_version   = "1.3.7"
  s.files            = `git ls-files`.split("\n")
  s.extra_rdoc_files = ["README.md", "History.txt"]
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
end
