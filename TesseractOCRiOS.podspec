Pod::Spec.new do |s|
  s.header_dir              = 'TesseractOCR'
  s.name                   = 'TesseractOCRiOS'
  s.version                 = '5.5.3'

  s.summary                 = 'Use Tesseract OCR in iOS projects written in either Objective-C or Swift.'

  s.homepage                = 'https://github.com/victoria-id/Tesseract-OCR-iOS/'
  s.documentation_url       = 'https://github.com/victoria-id/Tesseract-OCR-iOS/blob/spm-v5.5/README.md'

  s.license                 = { :type => 'MIT',
                                :file => 'LICENSE.md' }

  s.authors                 = { 'Daniele Galiotto' => 'genius@g8production.com',
                                'Kevin Conley' => 'kcon@stanford.edu',
                                'Victoria-ID' => 'support@victoria-id.com' }

  s.source                  = { :git => 'https://github.com/victoria-id/Tesseract-OCR-iOS.git',
                                :tag => s.version.to_s }

  s.platform                = :ios, '15.0'

  # Same binaries as Package.swift. CocoaPods copies every library xcframework's Headers/
  # into one shared directory with rsync --delete, so only the last one listed keeps its
  # headers. Leptonica must stay last: its Headers/leptonica/module.modulemap provides
  # `import Leptonica` for Swift clients.
  s.ios.vendored_frameworks = 'TesseractOCR/xcframework/TesseractOCR.xcframework',
                              'TesseractOCR/xcframework/Tesseract.xcframework',
                              'TesseractOCR/xcframework/JPEG.xcframework',
                              'TesseractOCR/xcframework/PNG.xcframework',
                              'TesseractOCR/xcframework/TIFF.xcframework',
                              'TesseractOCR/xcframework/Leptonica.xcframework'

  s.frameworks              = 'UIKit', 'Foundation', 'CoreGraphics', 'Accelerate'
  s.libraries               = 'z', 'c++'
end
