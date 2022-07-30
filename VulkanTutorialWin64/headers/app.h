#pragma once

#include "window.h"

namespace engine
{
	class App
	{
	public:
		static constexpr int WIDTH = 800;
		static constexpr int HEIGHT = 600;

		void run();

	private:
		Window window{ WIDTH, HEIGHT, "Hi Vulkan?" };
	};
}