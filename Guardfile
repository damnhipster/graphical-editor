# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^.+\.rb$})     { "spec" }
  watch('spec/spec_helper.rb')  { "spec" }


  # Capybara features specs
  watch(%r{^views/.*\.(erb|haml|slim)$})     { |m| "spec/features" }

end

