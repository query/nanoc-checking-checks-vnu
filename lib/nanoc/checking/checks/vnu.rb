module Nanoc
  module Checking
    module Checks
      class Vnu < ::Nanoc::Checking::Check
        identifier :vnu

        def run
          args = ['vnu',
                  '--skip-non-html', '--also-check-css', '--also-check-svg',
                  '--errors-only', '--format', 'json',
                  @config.output_dir]
          output = JSON.load(IO.popen(args, err: [:child, :out], &:read))
          output['messages'].each do |m|
            add_issue(m['message'], subject: m['url'].sub(/^file:/, ''))
          end
        end
      end
    end
  end
end
