namespace :picture do
  desc "Picture task converting uploaded images to webp and jp2 formats"

  task :prepare, [:path] do |task, args|
    p "This may take some time..."

    path = args[:path] || 'public'

    ["png", "jpg", "jpeg", "gif"].each do |dim|

      Dir[ path + "/**/*.{#{dim}}" ].each do |file|
        p "#{file} converting"

        begin
          PictureConverter.convert(file)
        rescue => e
          p e
        end
      end

    end
  end

end
