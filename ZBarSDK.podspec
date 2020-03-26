#
#  Be sure to run `pod spec lint ZBarSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "ZBarSDK"
  spec.version      = "1.3.3"
  spec.summary      = "QR and barcode scan library."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC

                   DESC

  spec.homepage     = "http://zbar.sourceforge.net/"

  spec.license      = "GNU LGPL 2.1"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Jeff Brown" => "spadix@users.sourceforge.net" }

  spec.source       = { :git => "https://github.com/chen392356785/ZBar.git", :tag => "iPhoneSDK-#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.public_header_files = "iphone/**/**/*.h", "include/*.h"

  spec.source_files  = "include/zbar.h", "zbar/**/*.h", "iphone/*.h", "iphone/include/**/*.h", "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c", "zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c", "zbar/qrcode/*.c", "iphone/*.m"

  spec.resources  = "iphone/res/{zbar-*.png,zbar-help.html}"

  spec.frameworks = "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "QuartzCore"
 
  spec.libraries = "iconv",

  spec.xcconfig = { 
      "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*][arch=*]" => "ZBarReaderViewImpl_Simulator.m",
      "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*][arch=*]" => "ZBarReaderViewImpl_Capture.m ZBarCaptureReader.m",
      "GCC_PREPROCESSOR_DEFINITIONS" => "NDEBUG=1" 
  }

  spec.prefix_header_file = "iphone/include/prefix.pch"

  spec.compiler_flags = "-w"

  spec.requires_arc = false



  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

 
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
