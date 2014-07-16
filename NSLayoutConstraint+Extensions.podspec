Pod::Spec.new do |s|

  s.name         = "NSLayoutConstraint+Extensions"
  s.version      = "1.0.0"
  s.summary      = "NSLayoutConstraint Extensions is a useful category on NSLayoutConstraint containing a set of helper methods for creating most commonly used constraints and debugging them."

  s.description  = <<-DESC
                   ##NSLayoutConstraint Extensions 

A **useful** category on `NSLayoutConstraint` containing a set of helper methods for creating most commonly used constraints. The category also includes a debugging extension that makes troubleshooting invalid constraints much easier and faster.

It is designed to be **as easy to use as possible to integrate and use** to speed up everyday development tasks. All the methods are well documented and described using doxygen style. 

Furthermore, the category comes along with **a small demo project** where you can see how to use helper methods for creating and debugging constraints.

                   DESC

  s.homepage     = "http://stunningco.de/2014/07/15/introducing-nslayoutconstraint-extensions/"
  s.license      = "CC0"

  s.author             = { "Rafal Sroka" => "rafal.sroka.it@gmail.com" }
  s.social_media_url   = "http://twitter.com/r3econ"

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/r3econ/NSLayout-Constraint-Extensions", :tag => "1.0.0" }

  s.source_files  = "Classes", "Classes/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true

end
