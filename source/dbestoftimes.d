module dbestoftimes;
import vibe.vibe;
@path("bot")
class DBestOfTimesController {
	immutable string title = "D Best of Times";
	immutable string shorttitle = "bot";
	immutable string github = "https://github.com/TheBestofTimes/TheBestofTimes.github.io";
	string description;
	string subtitle;
	string previous;
	string next;

	void index() {
		description = "A guide that walks you through step-by-step how to install TTW and all essential mods.";
		render!("bot/index.dt", title, shorttitle, github, description);
	}

	void getIntro() {
		description = "A guide that walks you through step-by-step how to install TTW and all essential mods.";
		subtitle = "Introduction";
		previous = "/bot";
		next = "/bot/setup";
		render!("bot/intro.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getSetup() {
		description = "Clean install and initial launch of the vanilla game.";
		subtitle = "Setup";
		previous = "/bot/intro";
		next = "/bot/mo2";
		render!("bot/setup.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getMo2() {
		description = "Guide for installing and configuring Mod Organizer 2.";
		subtitle = "MO2";
		previous = "/bot/setup";
		next = "/bot/ttw";
		render!("bot/mo2.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getTTW() {
		description = "TTW installation.";
		subtitle = "TTW";
		previous = "/bot/mo2";
		next = "/bot/essentials";
		render!("bot/ttw.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getEssentials() {
		description = "Essential stability and performance mods, required for any modded setup.";
		subtitle = "Essential Mods";
		previous = "/bot/ttw";
		next = "/bot/finish";
		render!("bot/essentials.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getFinish() {
		description = "Final steps necessary before playing the game.";
		subtitle = "Finishing Steps";
		previous = "/bot/essentials";
		next = "/bot/changelog";
		render!("bot/finish.dt", subtitle, title, shorttitle, previous, next, github, description);
	}

	void getChangelog() {
		description = "Catalog of all changes made to the guide.";
		subtitle = "Changelogs";
		previous = "/bot/finish";
		next = "";
		render!("bot/changelog.dt", subtitle, title, shorttitle, previous, next, github, description);
	}
}