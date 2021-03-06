require_relative 'lib/htimlee/version'

Gem::Specification.new do |spec|
  spec.name          = 'htimlee'
  spec.version       = Htimlee::VERSION
  spec.authors       = ['9sako6']
  spec.email         = ['31821663+9sako6@users.noreply.github.com']

  spec.summary       = 'HTML tokenizer and parser implemented by pure Ruby'
  spec.description   = "Htimlee is HTML tokenizer and parser implemented by pure Ruby which conforms WHATWG's HTML Living Standard."
  spec.homepage      = 'https://github.com/9sako6/htimlee/'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/9sako6/htimlee.git'
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
