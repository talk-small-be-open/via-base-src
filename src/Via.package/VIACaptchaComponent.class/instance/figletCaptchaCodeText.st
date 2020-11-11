accessing
figletCaptchaCodeText
	^ figletCaptchaCodeText ifNil: [
		figletCaptchaCodeText := MCLPlatform runShellCommand: ('figlet -W ', captchaCode)]