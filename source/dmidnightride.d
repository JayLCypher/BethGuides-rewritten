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
		description = "A fully modular, comprehensive, and regularly updated modding guide that allows for any personal preference to be satisfied.";
		render!("tmr/index.dt", title, shorttitle, github, description);
	}
}