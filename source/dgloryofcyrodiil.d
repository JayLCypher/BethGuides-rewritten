module dgloryofcyrodiil;

import vibe.vibe;

@path("goc")
class DGloryOfCyrodiilController {
	immutable string title = "D Glory of Cyrodiil";
	immutable string shorttitle = "goc";
	immutable string github = "https://github.com/GloryOfCyrodiil/GloryOfCyrodiil.github.io";
	string description;
	string subtitle;
	string previous;
	string next;

	void index() {
		description = "A fully modular, comprehensive, and regularly updated modding guide that allows for any personal preference to be satisfied.";
		render!("goc/index.dt", title, shorttitle, github, description);
	}
}