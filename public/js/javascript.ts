document.addEventListener('keyup', keyboardPagination, { once: true });
document.addEventListener("DOMContentLoaded", sidenavActiveLink, { once: true });
document.addEventListener("DOMContentLoaded", sidenavRightBarHide, { once: true });

if (window.location.pathname! == "/") { document.getElementById("titlebar")!.classList.add("transparent"); }

function keyboardPagination(e: KeyboardEvent) {
	if (e.code === "ArrowRight") { window.open(document.getElementById("next")!.getAttribute("href")!,"_self") }
	else if (e.code === "ArrowLeft") { window.open(document.getElementById("previous")!.getAttribute("href")!, "_self"); }
}

function sidenavActiveLink() {
	const aList = Array.prototype.slice.call(document.getElementById("sidenavLeftList")!.getElementsByTagName("a")!, 0);
	const aList2 = Array.prototype.slice.call(document.getElementById("sidenavLeftList2")!.getElementsByTagName("a")!, 0);
	const aListFinal = Array.prototype.concat(aList, aList2);
	const currentPath = window.location.pathname!;
	for (const a of aListFinal) {
		if (a.getAttribute("href")! == currentPath) {
			a.classList.add("active");
			break;
		}
	}
	document.removeEventListener("DOMContentLoaded", sidenavActiveLink);
	return;
}

function sidenavRightBarHide() {
	const sidenavRight = document.getElementById("sidenavRight")!;
	if (!sidenavRight.querySelector("ul")!.querySelector("li")!) { sidenavRight.style.display = "none"; }
	document.removeEventListener("DOMContentLoaded", sidenavRightBarHide);
}

function titleGlow() {
	document.getElementById("title")!.classList.toggle("glow");
	document.getElementById("backdrop")!.classList.toggle("blur");
}

function toggleMenu(ID: string) { document.getElementById(ID)!.classList.toggle("show"); }