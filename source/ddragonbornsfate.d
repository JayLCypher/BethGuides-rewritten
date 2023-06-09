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
		subtitle = "Tweaks";
		previous = "/adf/bugfix";
		next = "/adf/hud";
		render!("adf/tweaks.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getHud() {
		description = "Mods that vastly improve the vanilla user interface without making any drastic stylistic changes.";
		subtitle = "User Interface";
		previous = "/adf/tweaks";
		next = "/adf/gameplay";
		render!("adf/hud.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getGameplay() {
		description = "Mods that vastly improve vanilla gameplay experience, while still remaining closer to vanilla.";
		subtitle = "Gameplay";
		previous = "/adf/hud";
		next = "/adf/visuals";
		render!("adf/gameplay.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getVisuals() {
		description = "Mods that vastly improve vanilla visuals.";
		subtitle = "Visuals";
		previous = "/adf/gameplay";
		next = "/adf/finish";
		render!("adf/visuals.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getFinish() {
		description = "Final steps necessary before playing the game.";
		subtitle = "Final Steps";
		previous = "/adf/visuals";
		next = "/adf/appendix";
		render!("adf/finish.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getAppendix() {
		description = "Links for the changelog, FAQ, and various resources.";
		subtitle = "Appendix";
		previous = "/adf/finish";
		next = "";
		render!("adf/appendix.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getFaq() {
		description = "Solutions to many common problems with the guide.";
		subtitle = "FAQ";
		previous = "/adf/appendix";
		next = "";
		render!("adf/faq.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getChangelog() {
		description = "Catalog of all changes made to the guide.";
		subtitle = "Changelog";
		previous = "/adf/appendix";
		next = "";
		render!("adf/changelog.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getResources() {
		description = "Resources that may help further modding or learning about modding Bethesda games.";
		subtitle = "Resources";
		previous = "/adf/appendix";
		next = "";
		render!("adf/resources.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getAvoidTools() {
		description = "List of many popular modding tools that are outdated/broken.";
		subtitle = "Tools to Avoid";
		previous = "/adf/resources";
		next = "";
		render!("adf/avoid_tools.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getAvoidMods() {
		description = "List of many popular mods that are outdated/broken.";
		subtitle = "Mods to Avoid";
		previous = "/adf/resources";
		next = "";
		render!("adf/avoid_mods.dt", title, shorttitle, subtitle, previous, next, github, description);
	}
}