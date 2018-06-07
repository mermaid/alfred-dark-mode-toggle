function run(args) {
	args = args ? args : []
	var systemEvents = Application("System Events")
	
	if (args && args == 'dark')
		systemEvents.appearancePreferences.darkMode = true
	else if (args && args == 'light')
		systemEvents.appearancePreferences.darkMode = false
	else
		systemEvents.appearancePreferences.darkMode = !systemEvents.appearancePreferences.darkMode()
}

run();
