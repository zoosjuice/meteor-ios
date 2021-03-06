Pod::Spec.new do |s|
  s.name         = "Meteor"
  s.version      = "0.1.2"
  s.summary      = "Meteor iOS."
  s.description  = <<-DESC
    Meteor iOS integrates native iOS apps with the Meteor platform through DDP.
    DESC
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = "https://github.com/martijnwalraven/meteor-ios"
  s.authors      = { "Martijn Walraven" => "martijn@martijnwalraven.com" }
  s.source       = { :git => "https://github.com/martijnwalraven/meteor-ios.git", :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'Meteor/**/*.{h,m}'
  s.public_header_files = `./Scripts/find_headers.rb --public`.split("\n")
  s.private_header_files = `./Scripts/find_headers.rb --private`.split("\n")
      
	s.framework = 'CoreData'
  
  s.dependency 'PocketSocket'
  s.dependency 'InflectorKit'
  s.dependency 'SimpleKeychain'
end
