import vibe.vibe;
import dbestoftimes;
import dvivanewvegas;
import dgloryofcyrodiil;

void main() {
	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	auto router = new URLRouter;
	router
		.get("*", serveStaticFiles("public/"))
		.get("/", staticTemplate!"index.dt")
		.registerWebInterface(new DBestOfTimesController)
		.registerWebInterface(new DVivaNewVegasController)
		.registerWebInterface(new DMidnightRideController)
		.registerWebInterface(new DDragonbornsFateController)
		.registerWebInterface(new DGloryOfCyrodiilController)
		;

	import std.stdio : writeln;
	writeln(router.getAllRoutes());

	auto listener = listenHTTP(settings, router);
	scope (exit) { listener.stopListening(); }

	logInfo("Please open http://127.0.0.1:8080/ in your browser.");
	runApplication();
}