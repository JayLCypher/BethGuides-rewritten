module dmidnightride;

import vibe.vibe;

@path("tmr")
class DMidnightRideController {
	immutable string title = "D Midnight Ride";
	immutable string shorttitle = "tmr";
	immutable string github = "https://github.com/TheMidnightRide/TheMidnightRide.github.io";
	string description;
	string subtitle;
	string previous;
	string next;

	void index() {
		description = "A fully modular, comprehensive, and regularly updated Fallout 4 modding guide that allows for any personal preference to be satisfied.";
		render!("tmr/index.dt", title, shorttitle, github, description);
	}

	void getIntro() {
		description = "Preamble about the guide's goals and requirements.";
		subtitle = "Introduction";
		previous = "/tmr/";
		next = "/tmr/setup";
		render!("tmr/intro.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getSetup() {
		description = "Clean install and initial launch of the vanilla game.";
		subtitle = "Initial Setup";
		previous = "/tmr/intro";
		next = "/tmr/mo2";
		render!("tmr/setup.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getMo2() {
		description = "Installing and configuring Mod Organizer 2.";
		subtitle = "Mod Organizer 2";
		previous = "/tmr/setup";
		next = "/tmr/utilities";
		render!("tmr/mo2.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getUtilities() {
		description = "Essential stability and performance mods, required for any modded setup.";
		subtitle = "Utilities";
		previous = "/tmr/mo2";
		next = "/tmr/bugfix";
		render!("tmr/utilities.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getBugfix() {
		description = "Essential mods that fix bugs, improve performance, and/or improve quality of life.";
		subtitle = "Utilities";
		previous = "/tmr/utilities";
		next = "/tmr/tweaks";
		render!("tmr/bugfix.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getTweaks() {
		description = "Various tweaks to improve annoying aspects of the game.";
		subtitle = "Tweaks";
		previous = "/tmr/bugfix";
		next = "/tmr/hud";
		render!("tmr/tweaks.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

		void getHud() {
		description = "Mods that vastly improve the vanilla user interface without making any drastic stylistic changes.";
		subtitle = "User Interface";
		previous = "/tmr/tweaks";
		next = "/tmr/gameplay";
		render!("tmr/hud.dt", title, shorttitle, subtitle, previous, next, github, description);
	}
}