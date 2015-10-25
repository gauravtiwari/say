module Backgrounds
  require 'rake/file_list'
  class Random

    def get
      backgrounds.sample
    end

    def backgrounds
      Rake::FileList["#{backgrounds_path}/**"].exclude(*File.read('.gitignore').split)
    end

    private

    def backgrounds_path
      Rails.root.join('app', 'assets', 'images', 'backgrounds').to_s
    end
  end

end