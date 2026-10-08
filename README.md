# QuoteVerse - Random Quote Generator

A beautiful Random Quote Generator app built with Flutter featuring 80+ handpicked quotes across 10+ categories, smooth animations, and a favorites system.

## About

QuoteVerse delivers daily inspiration through a curated collection of 80+ quotes from iconic thinkers, leaders, and creators. Each quote is presented with stunning gradient animations that change based on the selected category. Save your favorite quotes for later and share them with friends.

## Features

- 80+ handpicked quotes from famous personalities
- 10+ categories: Motivational, Life, Wisdom, Success, Happiness, Courage, Leadership, Creativity, Perseverance, Change, Knowledge
- Smooth fade, slide, and scale animations on every new quote
- Dynamic gradient borders that change per category
- Category filter chips for browsing by topic
- Favorites system to save and manage liked quotes
- Copy to clipboard functionality
- Share quotes with hashtags
- Beautiful dark theme with glassmorphism UI
- No external dependencies, pure Flutter

## Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **Design:** Material Design 3
- **State Management:** setState
- **Animations:** Custom AnimationControllers (fade, slide, scale)
- **Dependencies:** None (pure Flutter, no external packages)

## Installation

1. Make sure you have Flutter installed on your machine
2. Clone this repository:
```bash
git clone https://github.com/Syed-Khizer-Rizvi/CodeAlpha_Random_Quote_Generator.git
```
3. Navigate to the project directory:
```bash
cd CodeAlpha_Random_Quote_Generator
```
4. Install dependencies:
```bash
flutter pub get
```
5. Run the app:
```bash
flutter run
```

## Download APK

You can download the APK directly from the [Releases](https://github.com/Syed-Khizer-Rizvi/CodeAlpha_Random_Quote_Generator/releases) section.

## Project Structure

```
lib/
 main.dart          # Complete app with all screens and logic
   Quote            # Data model (text, author, category)
   QuoteData        # Static quote collection & category filtering
   AppColors        # Color palette & gradient pairs
   HomeScreen       # Main screen with animations & category chips
   FavoritesScreen  # Saved quotes list with remove option
   _ActionButton    # Reusable action button widget
```

## Key Highlights

- **Pure Flutter:** Zero external dependencies, everything built from scratch
- **80+ Quotes:** Carefully curated from world-renowned personalities
- **10 Gradient Pairs:** Each category has its own unique color scheme
- **Triple Animation:** Fade + Slide + Scale on every quote transition
- **Category Icons:** Custom icons mapped to each quote category


## License

This project is open source and available under the [MIT License](LICENSE).
