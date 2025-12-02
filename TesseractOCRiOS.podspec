Pod::Spec.new do |s|
  s.header_dir		          = 'TesseractOCR'
  s.name                    = 'victoria_id_check_id_sdk_tesseract_ios'
  s.version                 = '5.5.0'

  s.summary                 = 'Use Tesseract OCR in iOS projects written in either Objective-C or Swift.'

  s.homepage                = 'https://github.com/victoria-id/Tesseract-OCR-iOS/'
  s.documentation_url       = 'https://github.com/victoria-id/Tesseract-OCR-iOS/blob/master/README.md'

  s.license                 = { :type => 'MIT',
                                :file => 'LICENSE.md' }

  s.authors                 = { 'Victoria-ID' => 'support@victoria-id.com' }

  s.source                  = { :git => 'https://github.com/victoria-id/Tesseract-OCR-iOS.git',                                                         :tag => s.version.to_s }

  s.platform                = :ios, "9.0"
  s.requires_arc            = true
  s.frameworks              = 'UIKit', 'Foundation'

  s.ios.deployment_target   = "15.0"
  s.ios.vendored_frameworks = 'TesseractOCR/xcframework/TesseractOCR.xcframework', 'TesseractOCR/xcframework/Tesseract.xcframework', 'TesseractOCR/xcframework/Leptonica.xcframework', 'TesseractOCR/xcframework/JPEG.xcframework', 'TesseractOCR/xcframework/PNG.xcframework', 'TesseractOCR/xcframework/TIFF.xcframework'
  s.xcconfig                = { 'OTHER_LDFLAGS' => '-lz',
                                'CLANG_CXX_LIBRARY' => 'compiler-default' }

end
