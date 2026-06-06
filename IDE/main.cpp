
#include <string>
#include <vector>
#include <iostream>

#include "imgui.h"
#include "imgui-SFML.h"

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

int main()
{
    sf::RenderWindow window(sf::VideoMode({ 1920, 1080 }), "SFML window");
    if (!ImGui::SFML::Init(window)) {}

    const sf::Font font("JetBrainsMono-Regular.ttf");
    sf::Text text(font, "Hello SFML", 50);

    sf::Clock clock{};
    while (window.isOpen()) {
        while (const std::optional event = window.pollEvent()) {
            ImGui::SFML::ProcessEvent(window, *event);
            if (event->is<sf::Event::Closed>())
                window.close();
            if (const auto* resized = event->getIf<sf::Event::Resized>()) {
                sf::FloatRect visibleArea({ 0.f, 0.f }, sf::Vector2f(resized->size));
                window.setView(sf::View(visibleArea));
            }
        }

        ImGui::SFML::Update(window, clock.restart());

        ImGui::Begin("Hello, world!");
        if (ImGui::Button("Click me!")) {
            std::cout << "I love being clicked!\n";
        }
        ImGui::End();

        window.clear();
        window.draw(text);
        ImGui::SFML::Render(window);
        window.display();
    }

    ImGui::SFML::Shutdown();
}

