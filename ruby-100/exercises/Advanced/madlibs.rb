ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS = %w(fox dog head leg).freeze
VERBS = %w(jumps lifts bites licks).freeze
ADVERBS = %w(easily lazily noisily excitedly).freeze

File.open('/Users/mason/Documents/Programming/Launch_School/ruby-100/exercises/Advanced/madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:         NOUNS.sample,
                      verb:         VERBS.sample,
                      adjective:    ADJECTIVES.sample,
                      adverb:       ADVERBS.sample)
  end
end