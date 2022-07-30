#include "app.h"

namespace engine
{
	void App::run() {
		while (!window.shouldClose()) {
			glfwPollEvents();
		}
	}
}