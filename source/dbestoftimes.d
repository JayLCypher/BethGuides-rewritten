module dbestoftimes;
import vibe.vibe;
@path("tbot")
class DBestOfTimesController {
	immutable string title = "D Best of Times";
	immutable string shorttitle = "tbot";
	immutable string github = "https://github.com/TheBestofTimes/TheBestofTimes.github.io";
	string description;
	string subtitle;
	string previous;
	string next;

	void index() {
		description = "A guide that walks you through step-by-step how to install TTW and all essential mods.";
		render!("tbot/index.dt", title, shorttitle, github, description);
	}

	void getIntro() {
		description = "A guide that walks you through step-by-step how to install TTW and all essential mods.";
		subtitle = "Introduction";
		previous = "/tbot";
		next = "/tbot/setup";
		render!("tbot/intro.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getSetup() {
		description = "Clean install and initial launch of the vanilla game.";
		subtitle = "Setup";
		previous = "/tbot/intro";
		next = "/tbot/mo2";
		render!("tbot/setup.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getMo2() {
		description = "Guide for installing and configuring Mod Organizer 2.";
		subtitle = "MO2";
		previous = "/tbot/setup";
		next = "/tbot/ttw";
		render!("tbot/mo2.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getTTW() {
		description = "TTW installation.";
		subtitle = "TTW";
		previous = "/tbot/mo2";
		next = "/tbot/essentials";
		render!("tbot/ttw.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getEssentials() {
		description = "Essential stability and performance mods, required for any modded setup.";
		subtitle = "Essential Mods";
		previous = "/tbot/ttw";
		next = "/tbot/finish";
		render!("tbot/essentials.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getFinish() {
		description = "Final steps necessary before playing the game.";
		subtitle = "Finishing Steps";
		previous = "/tbot/essentials";
		next = "/tbot/changelog";
		render!("tbot/finish.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getChangelog() {
		description = "Catalog of all changes made to the guide.";
		subtitle = "Changelogs";
		previous = "/tbot/finish";
		next = "";
		render!("tbot/changelog.dt", subtitle, title, shorttitle, previous, next, github, description);
	}
}