function run(args) {
	args = args ? args : []
	var systemEvents = Application("System Events")
	var theme;
	
	if (args && args == 'dark') {
		systemEvents.appearancePreferences.darkMode = true
		theme = 'dark'
	} else if (args && args == 'light') {
		systemEvents.appearancePreferences.darkMode = false
		theme = 'light'
	} else {
		systemEvents.appearancePreferences.darkMode = !systemEvents.appearancePreferences.darkMode()
		theme = systemEvents.appearancePreferences.darkMode() ? 'dark' : 'light'
	}

	return theme
}