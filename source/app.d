import vibe.vibe;
import dbestoftimes;

void main() {
	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	auto router = new URLRouter;
	router.get("*", serveStaticFiles("public/"));
	//router.get("/", staticTemplate!"index.dt");
	router.registerWebInterface(new DBestOfTimesController);
	
	auto listener = listenHTTP(settings, router);
	scope (exit) { listener.stopListening(); }

	logInfo("Please open http://127.0.0.1:8080/ in your browser.");
	runApplication();
}