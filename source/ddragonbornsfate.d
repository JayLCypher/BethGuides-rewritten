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

	void getUtilities() {
		description = "Utilities section full of mods that do some extra function or are required by other mods.";
		subtitle = "Utilities";
		previous = "/adf/mo2";
		next = "/adf/bugfix";
		render!("adf/utilities.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getBugfix() {
		description = "Essential mods that fix bugs, improve performance, and/or improve quality of life.";
		subtitle = "Bug Fixes";
		previous = "/adf/utilities";
		next = "/adf/tweaks";
		render!("adf/bugfix.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getTweaks() {
		description = "Essential mods that fix bugs, improve performance, and/or improve quality of life.";
		subtitle = "Bug Fixes";
		previous = "/adf/bugfix";
		next = "/adf/hud";
		render!("adf/tweaks.dt", title, shorttitle, subtitle, previous, next, github, description);
	}
}