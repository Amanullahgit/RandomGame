**GitHub Repository for Flutter Random Game Project**

### Project Overview
This Flutter project is a simple quiz game where users are challenged to guess a random number within a specified time limit. The game includes features such as a countdown timer, display cards for information, and buttons for starting, attempting, and resetting the game.

### Developer Information
- **Developer:** Amanullah Bahram

<img src="https://github.com/Amanullahgit/RandomGame/assets/41961773/069c63f6-15b6-4374-af46-cc1e9e9f6fed" width="480" height="800" />


### Project Structure
The project is organized into multiple Dart files to enhance modularity and readability:

1. **main.dart:** The entry point of the application, defining the main `MyApp` widget.

2. **home.dart:** Contains the `HomePage` widget, which serves as the main screen of the quiz game. It includes various components like display cards, circular timer, and custom buttons.

3. **displayCard.dart:** Defines the `DisplayCard` widget, responsible for displaying information in a card format. The card type determines the card's appearance.

4. **customButton.dart:** Implements the `CustomStartButton` widget, creating a custom-styled button with a specified title and onPressed function.

5. **circularTimer.dart:** Provides the `CircularTimer` widget, utilizing the `circular_countdown_timer` package to display a circular countdown timer.

6. **GameModel.dart:** Represents the game's data model, extending `ChangeNotifier` for state management. It includes methods for resetting, starting, and checking results, as well as a timer for tracking game duration.

7. **GameController.dart:** Manages the game's logic, utilizing the `GameModel` for data manipulation. It includes methods for resetting the game, starting the game, checking results, and handling timeouts.

8. **pubspec.yaml:** Specifies project details, dependencies, and version information.

### How to Run the Project
To run this Flutter project locally, follow these steps:

1. Ensure you have Flutter and Dart installed on your machine.

2. Clone the repository:
   ```bash
   git clone [repository_link]
   ```

3. Navigate to the project directory:
   ```bash
   cd random_quiz
   ```

4. Run the project using Flutter:
   ```bash
   flutter run
   ```

### Additional Notes
- Make sure to check the [pubspec.yaml](pubspec.yaml) file for project dependencies.
- Feel free to explore and customize the code according to your preferences.

### Feedback and Contributions
If you have any feedback or suggestions, feel free to open an issue or submit a pull request. Contributions are always welcome!

### License
This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for more details.
