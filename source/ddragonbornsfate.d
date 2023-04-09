module ddragonbornsfate;

import vibe.vibe;

@path("adf")
class DDragonbornsFateController {
	immutable string title = "D Dragonborn's Fate";
	immutable string shorttitle = "adf";
	immutable string github = "https://github.com/DragonbornsFate/DragonbornsFate.github.io";
	string description;
	string subtitle;
	string previous;
	string next;

	void index() {
		description = "A fully modular, comprehensive, and regularly updated modding guide that allows for any personal preference to be satisfied.";
		render!("adf/index.dt", title, shorttitle, github, description);
	}

	void getIntro() {
		description = "Preamble about the guide's goals and requirements.";
		subtitle = "Introduction";
		previous = "/adf/";
		next = "/adf/setup";
		render!("adf/intro.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getSetup() {
		description = "A fully modular, comprehensive, and regularly updated modding guide that allows for any personal preference to be satisfied.";
		subtitle = "Initial Setup";
		previous = "/adf/intro";
		next = "/adf/mo2";
		render!("adf/setup.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getMo2() {
		description = "Installing and configuring Mod Organizer 2.";
		subtitle = "Mod Organizer 2";
		previous = "/adf/setup";
		next = "/adf/utilities";
		render!("adf/mo2.dt", title, shorttitle, subtitle, previous, next, github, description);
	}
}