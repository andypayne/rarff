require 'rubygems'
SPEC = Gem::Specification.new do |s|
    s.name                = "rarff"
    s.version             = "0.1.0"
    s.author              = "Andy Payne"
    s.email               = "apayne@gmail.com"
    s.homepage            = "TODO"
    s.platform            = Gem::Platform::RUBY
    s.summary             = "Library for handling Weka ARFF files"
    candidates            = Dir.glob("{bin,docs,lib,tests}/**/*")
    s.files               = candidates.delete_if do |item|
                                item.include?("CVS") || item.include?("rdoc")
                            end
    s.require_path        = "lib"
    s.autorequire         = "rarff"
    s.test_file           = "tests/ts_rarff.rb"
    s.has_rdoc            = true
    s.extra_rdoc_files    = %w(README.md)
end

