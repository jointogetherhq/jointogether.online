require 'date'

namespace :post do
  desc 'generates a new post, e.g. `rake new_post'
  task :new, [:title] do |_t, args|
    args.to_h => { title: }

    title_slug = title.downcase.split(" ").join("-")
    date = Date.today
    filename = "_posts/#{date.strftime('%Y-%m-%d')}-#{title_slug}.markdown"

    raise "#{filename} already exists" if File.exist?(filename)

    File.open(filename, "w") do |f|
      f.write(
        <<~STR
          ---
          layout: post
          title: "#{title}"
          date: #{date.to_s} 
          description: Describe me here
          og_image_path: /assets/images/posts/#{title_slug}.png
          ---
        STR
      )
    end

    puts "New post: '#{title}' generated at #{filename}"
  end
end
