module dvivanewvegas;

import vibe.vibe;

@path("vnv")
class DVivaNewVegasController {
	immutable string title = "D Viva New Vegas";
	immutable string shorttitle = "vnv";
	immutable string github = "https://github.com/VivaNewVegas/vivanewvegas.github.io";
	string description;
	string subtitle;
	string previous;
	string next;

	void index() {
		description = "A fully modular, comprehensive, and regularly updated modding guide that allows for any personal preference to be satisfied.";
		render!("vnv/index.dt", title, shorttitle, github, description);
	}

	void getIntro() {
		description = "Preamble about the guide's goals and requirements.";
		subtitle = "Introduction";
		previous = "/vnv/";
		next = "/vnv/setup";
		render!("vnv/intro.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getSetup() {
		description = "Clean install and initial launch of the vanilla game.";
		subtitle = "Initial Setup";
		previous = "/vnv/intro";
		next = "/vnv/mo2";
		render!("vnv/setup.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getMo2() {
		description = "Essential stability and performance mods, required for any modded setup.";
		subtitle = "Mod Organizer 2";
		previous = "/vnv/setup";
		next = "/vnv/utilities";
		render!("vnv/mo2.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getUtilities() {
		description = "Installing and configuring Mod Organizer 2.";
		subtitle = "Utilities";
		previous = "/vnv/mo2";
		next = "/vnv/bugfix";
		render!("vnv/utilities.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getBugfix() {
		description = "Essential mods that fix bugs, improve performance, and/or improve quality of life.";
		subtitle = "Bug Fixes";
		previous = "/vnv/utilities";
		next = "/vnv/hud";
		render!("vnv/bugfix.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getHud() {
		description = "Mods that vastly improve the vanilla user interface without making any drastic stylistic changes.";
		subtitle = "User Interface";
		previous = "/vnv/bugfix";
		next = "/vnv/gameplay";
		render!("vnv/hud.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getGameplay() {
		description = "Simple gameplay changes/additions that make the game feel more balanced and modern.";
		subtitle = "Gameplay";
		previous = "/vnv/hud";
		next = "/vnv/overhauls";
		render!("vnv/gameplay.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getOverhauls() {
		description = "Drastic gameplay overhauls that make the game much more difficult and exciting, recommended only for veteran players.";
		subtitle = "Overhauls";
		previous = "/vnv/gameplay";
		next = "/vnv/content";
		render!("vnv/overhauls.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getContent() {
		description = "Small content additions/restorations that keep the vanilla-style.";
		subtitle = "Content";
		previous = "/vnv/overhauls";
		next = "/vnv/visuals";
		render!("vnv/content.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getVisuals() {
		description = "Various mods to improve the game's visuals without making any drastic stylistic changes or decreasing performance/stability.";
		subtitle = "Visuals";
		previous = "/vnv/content";
		next = "/vnv/finish";
		render!("vnv/visuals.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getFinish() {
		description = "Final steps necessary before playing the game.";
		subtitle = "Final Steps";
		previous = "/vnv/visuals";
		next = "/vnv/appendix";
		render!("vnv/finish.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getAppendix() {
		description = "Links for the changelog, FAQ, and various resources.";
		subtitle = "Appendix";
		previous = "/vnv/finish";
		next = "";
		render!("vnv/appendix.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getAvoidMods() {
		description = "List of many popular mods that are outdated/broken.";
		subtitle = "Mods to Avoid";
		previous = "/vnv/resources";
		next = "";
		render!("vnv/avoid_mods.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getAvoidTools() {
		description = "List of many popular modding tools that are outdated/broken.";
		subtitle = "Tools to Avoid";
		previous = "/vnv/resources";
		next = "";
		render!("vnv/avoid_tools.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getFaq() {
		description = "Solutions to many common problems with the guide.";
		subtitle = "FAQ";
		previous = "/vnv/appendix";
		next = "";
		render!("vnv/faq.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getResources() {
		description = "Various useful resources/guides for additional modding or mod creation.";
		subtitle = "Resources";
		previous = "/vnv/appendix";
		next = "";
		render!("vnv/resources.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getLod() {
		description = "Guide on how to generate Object LOD with xLODgen.";
		subtitle = "LOD Guide";
		previous = "/vnv/resources";
		next = "";
		render!("vnv/lod.dt", title, shorttitle, subtitle, previous, next, github, description);
	}
}