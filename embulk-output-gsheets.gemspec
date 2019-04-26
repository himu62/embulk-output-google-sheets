
Gem::Specification.new do |spec|
  spec.name          = "embulk-output-gsheets"
  spec.version       = "0.1.0"
  spec.authors       = ["himu62"]
  spec.summary       = "google-spreadsheet output plugin for Embulk"
  spec.description   = "Dumps records to google spreadsheet."
  spec.email         = ["hiromu_kobayashi@voyagegroup.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/himu62/embulk-output-gsheets"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
