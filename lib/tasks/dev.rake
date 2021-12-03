namespace :dev do
  desc "Manage developer evironment."
  task setup: :erironment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end
end