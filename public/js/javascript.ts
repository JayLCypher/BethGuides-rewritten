document.addEventListener('keyup', keyboardPagination, { once: true });
document.addEventListener("DOMContentLoaded", transparentTitleBar, {once: true });
document.addEventListener("DOMContentLoaded", sidenavActiveLink, { once: true });
document.addEventListener("DOMContentLoaded", sidenavRightBarHide, { once: true });

function transparentTitleBar() {
	const pathNames = ["/vnv/", "/bot/", "/goc/", "/tmr/", "/adf/"];
	const pathName = window.location.pathname!;
	for (const path of pathNames) {
		if (pathName == path) { document.getElementById("titlebar")!.classList.add("transparent"); break; }
	}
	document.removeEventListener("DOMContentLoaded", transparentTitleBar);
}

function keyboardPagination(e: KeyboardEvent) {
	if (e.code === "ArrowRight") { window.open(document.getElementById("next")!.getAttribute("href")!, "_self") }
	else if (e.code === "ArrowLeft") { window.open(document.getElementById("previous")!.getAttribute("href")!, "_self"); }
}

function sidenavActiveLink() {
	const aList = Array.prototype.slice.call(document.getElementById("sidenavLeftList")?.getElementsByTagName("a")!, 0)!;
	const aList2 = Array.prototype.slice.call(document.getElementById("sidenavLeftList2")?.getElementsByTagName("a")!, 0)!;
	const aListFinal = Array.prototype.concat(aList, aList2)!;
	if (!aListFinal) { return; }
	const currentPath = window.location.pathname!;
	for (const a of aListFinal) {
		const attr = a.getAttribute("href")!;
		if (attr && attr == currentPath) {
			a.classList.add("active");
			break;
		}
	}
	document.removeEventListener("DOMContentLoaded", sidenavActiveLink);
	return;
}

function sidenavRightBarHide() {
	const sidenavRight = document.getElementById("sidenavRight")!;
	if (!sidenavRight.querySelector("ul")?.querySelector("li")!) { sidenavRight.style.display = "none"; }
	document.removeEventListener("DOMContentLoaded", sidenavRightBarHide);
}

function titleGlow() {
	document.getElementById("title")!.classList.toggle("glow")!;
	document.getElementById("backdrop")!.classList.toggle("blur")!;
}

function toggleMenu(ID: string) { document.getElementById(ID)!.classList.toggle("show"); }

// TODO: Test and implement this function for BOT, ask if it's a plan to do this for @all guides.
function setBackgroundByTime() {
	const date = new Date();
	const hour = date.getHours();
	var updateColor = false;

	// set the background image based on the current time
	if (hour >= 0 && hour < 7) { document.body.style.backgroundImage = "url('/img/backgrounds/img0.webp')"; }
	else if (hour >= 7 && hour < 9) {
		document.body.style.backgroundImage = "url('/img/backgrounds/img7.webp')";
		updateColor = true;
	}
	else if (hour >= 9 && hour < 12) {
		document.body.style.backgroundImage = "url('/img/backgrounds/img9.webp')";
		updateColor = true;
	}
	else if (hour >= 12 && hour < 17) {
		document.body.style.backgroundImage = "url('/img/backgrounds/img12.webp')";
		updateColor = true;
	}
	else if (hour >= 17 && hour < 20) {
		document.body.style.backgroundImage = "url('/img/backgrounds/img17.webp')";
		updateColor = true;
	}
	else if (hour >= 20 && hour < 23) { document.body.style.backgroundImage = "url('/img/backgrounds/img20.webp')"; }
	else { document.body.style.backgroundImage = "url('/img/backgrounds/img23.webp')"; }

	// TODO
	// Could probs just force a color theme change
	if (updateColor) {
		const headerTitle = document.getElementById('headerTitle');
		const button = document.getElementById('sideButton');
		const headerLinks = document.getElementById('headerLinks');
		button!.style.color = "rgba(0, 0, 0, 0.75)";
		headerTitle!.style.color = "rgba(0, 0, 0, 0.75)";
		Array.from(headerLinks!.children).forEach(child => {
			child.setAttribute("style", "color: rgba(0, 0, 0, 0.75);");
		});
	}
}