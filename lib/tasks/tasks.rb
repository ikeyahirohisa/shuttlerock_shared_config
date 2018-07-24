require 'fileutils'

namespace :shuttlerock_shared_config do
  task update: %i[update_codeclimate update_eslint update_rubocop update_stylelintrc] do
  end

  desc 'Update .codeclimate.yml'
  task :update_codeclimate do
    input_path = File.expand_path('../../../lib/templates/.codeclimate.yml', __FILE__)
    FileUtils.copy(input_path, Dir.pwd)
  end

  desc 'Update .eslint.yml'
  task :update_eslint do
    input_path = File.expand_path('../../../lib/templates/.eslintrc', __FILE__)
    FileUtils.copy(input_path, Dir.pwd)
  end

  desc 'Update .rubocop.yml'
  task :update_rubocop do
    input_path = File.expand_path('../../../lib/templates/.rubocop.yml', __FILE__)
    FileUtils.copy(input_path, Dir.pwd)
  end

  desc 'Update .stylelintrc'
  task :update_stylelintrc do
    input_path = File.expand_path('../../../lib/templates/.stylelintrc', __FILE__)
    FileUtils.copy(input_path, Dir.pwd)
  end
end
