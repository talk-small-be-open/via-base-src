testing
extensionOf: aString isOneOf: extensions
  | extension |
  extension := (MCLPlatform splitString: aString delimiter: $.) last asLowercase.
  ^ extensions includes: extension