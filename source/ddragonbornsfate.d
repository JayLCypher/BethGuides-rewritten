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
}