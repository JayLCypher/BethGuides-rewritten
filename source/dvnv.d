module dvnv;

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

	void getAvoidMods() {
		description = "List of many popular mods that are outdated/broken.";
		subtitle = "Mods to Avoid";
		previous = "/vnv/resources";
		next = "";
		render!("vnv/avoid-mods.dt", title, shorttitle, subtitle, previous, next, github, description);
	}

	void getAvoidTools() {
		description = "List of many popular modding tools that are outdated/broken.";
		subtitle = "Tools to Avoid";
		previous = "/vnv/resources";
		next = "";
		render!("vnv/avoid-tools.dt", title, shorttitle, subtitle, previous, next, github, description);
	}
}