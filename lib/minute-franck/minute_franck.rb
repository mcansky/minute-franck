require "bundler/setup"

require "letsfreckle"
require "thor"

require "yaml"

class MinuteFranck < Thor
  no_tasks do
    def config
      config_path = "#{ENV['HOME']}/.franck_config.yml"
      unless File.exist?(config_path)
        raise SystemError, "config file missing"
      end
      YAML.load_file(config_path)
    end
    def setup
      _c = config
      LetsFreckle.configure do
        account_host _c['host']
        username _c['username']
        token _c['token']
      end
    end

  end

  desc "add --project PROJECT --time TIME --tags \"ARRAY, OF, TAGS\" --desc \"a description\"", "add an entry"
  options :project => :string, :time => :string, :tags => :array, :desc => :string, :date => :string
  def add
    setup
    desc_line = options[:desc]
    desc_line += ", #{options[:tags].join(',')}" if options[:tags]
    ans = LetsFreckle::Entry.create(:project_id => config["projects"][options[:project]]["id"],
                              :minutes => options[:time],
                              :description => desc_line,
                              :date => options[:date] || Time.now.strftime("%Y-%m-%d"))
    case ans.status
    when 200
      puts "Entry has been added : #{ans['location'].split('/').last}"
    when 201
      puts "Entry has been added : #{ans['location'].split('/').last}"
    else
      puts "there was an error : #{ans.status}"
    end
  end
end

MinuteFranck.start(ARGV)

