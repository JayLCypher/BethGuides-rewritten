module dbestoftimes;
import vibe.vibe;

class DBestOfTimesController {
	immutable string title = "D Best of Times";
	string subtitle;
	string previous;
	string next;

	void index() {
		render!("index.dt", title);
	}

	void getIntro() {
		subtitle = "Introduction";
		previous = "/";
		next = "setup";
		render!("pages/intro.dt", subtitle, title, previous, next);
	}

	void getSetup() {
		subtitle = "Setup";
		previous = "intro";
		next = "mo2";
		render!("pages/setup.dt", subtitle, title, previous, next);
	}

	void getMo2() {
		subtitle = "MO2";
		previous = "setup";
		next = "ttw";
		render!("pages/mo2.dt", subtitle, title, previous, next);
	}

	void getTtw() {
		subtitle = "TTW";
		previous = "mo2";
		next = "essentials";
		render!("pages/ttw.dt", subtitle, title, previous, next);
	}

	void getEssentials() {
		subtitle = "Essential Mods";
		previous = "ttw";
		next = "finish";
		render!("pages/essentials.dt", subtitle, title, previous, next);
	}

	void getFinish() {
		subtitle = "Finishing Steps";
		previous = "essentials";
		next = "changelog";
		render!("pages/finish.dt", subtitle, title, previous, next);
	}

	void getChangelog() {
		subtitle = "Changelogs";
		previous = "finish";
		next = "";
		render!("pages/changelog.dt", subtitle, title, previous, next);
	}
}