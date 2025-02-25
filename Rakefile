desc 'Clean flaticons targets'
task :clean do
  FileUtils.rm_rf '_flaticons/normalised'
  FileUtils.rm_rf 'assets/sprite.scss'
  FileUtils.rm_rf 'assets/images/flaticons-sprite.svg'
end

desc 'Make the flat icons sprite. Use the SCSS file as the symbolic anchor.'
task icons: 'assets/sprite.scss'

file 'assets/flaticons-sprite.svg' => 'assets/sprite.css'

file 'assets/sprite.scss' => '_flaticons/normalised' do |t|
  system("npx svg-sprite --config _flaticons/sprite-svg.json #{t.prerequisites[0]}/*.svg")
end

# Normalise by removing height/width according to config
directory '_flaticons/normalised' do |t|
  system("npx svgo --config _flaticons/svgo-normalise.js -i _flaticons/src -o #{t.name}")
end
