module Nanoc
  module Checking
    module Checks
      class Vnu < ::Nanoc::Checking::Check
        identifier :vnu

        def run
          args = ['vnu', '--skip-non-html', '--errors-only', '--format', 'json']
          vnu_config = @config.fetch(:checks, {}).fetch(:vnu, {})
          if vnu_config.fetch(:also_check_css, true)
            args << '--also-check-css'
          end
          if vnu_config.fetch(:also_check_svg, true)
            args << '--also-check-svg'
          end
          args << @config.output_dir

          output = JSON.load(IO.popen(args, err: [:child, :out], &:read))
          output['messages'].each do |m|
            add_issue(m['message'], subject: m['url'].sub(/^file:/, ''))
          end
        end
      end
    end
  end
end
