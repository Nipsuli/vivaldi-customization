(function() {
	setTimeout(function() {
		let extensionDivs = document.getElementsByClassName('toolbar-extensions')[0];
		let panelSwitch = document.getElementById('switch');
		[...extensionDivs.children].reverse().map(c => c.firstChild).forEach(b => panelSwitch.insertBefore(b, panelSwitch.firstChild))
	}, 2000)
})()