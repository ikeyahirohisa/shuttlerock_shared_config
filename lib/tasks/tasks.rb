# frozen_string_literal: true

require 'rake'
require 'fileutils'

namespace :shuttlerock_shared_config do
  task update: %i[update_codeclimate update_eslint update_rubocop update_stylelintrc update_dangerfile] do
  end

  desc 'Update .codeclimate.yml'
  task :update_codeclimate do
    input_path = File.expand_path('../../lib/templates/.codeclimate.yml', __dir__)
    FileUtils.copy(input_path, Dir.pwd)
    warn('Updated .codeclimate.yml')
  end

  desc 'Update .eslintrc'
  task :update_eslint do
    input_path = File.expand_path('../../lib/templates/.eslintrc', __dir__)
    FileUtils.copy(input_path, Dir.pwd)
    warn('Updated .eslintrc')
  end

  desc 'Update .rubocop.yml'
  task :update_rubocop do
    input_path = File.expand_path('../../lib/templates/.rubocop.yml', __dir__)
    FileUtils.copy(input_path, Dir.pwd)
    warn('Updated .rubocop.yml')
  end

  desc 'Update .stylelintrc'
  task :update_stylelintrc do
    input_path = File.expand_path('../../lib/templates/.stylelintrc', __dir__)
    FileUtils.copy(input_path, Dir.pwd)
    warn('Updated .stylelintrc')
  end

  desc 'Update Dangerfile'
  task :update_dangerfile do
    input_path = File.expand_path('../../lib/templates/Dangerfile', __dir__)
    FileUtils.copy(input_path, Dir.pwd)
    warn("Updated .Dangerfile\n" \
      "WARNING!!!\n" \
      "For danger.gem to work correctly, you need to add settings to:\n" \
      ".circleci/config.yml, doc/env_list.yml")
    input_path = File.expand_path('../../lib/templates/env_list.yml', __dir__)
    result_dir = Dir.pwd + '/doc'
    unless File.exist?(Dir.pwd + '/doc/env_list.yml')
      FileUtils.mkdir_p(result_dir)
      FileUtils.copy(input_path, result_dir)
      warn('Created /doc/env_list.yml')
    end
  end
end
