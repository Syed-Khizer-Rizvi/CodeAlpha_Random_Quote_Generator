import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuoteVerse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF6C63FF),
          secondary: Color(0xFFFF6584),
          surface: Color(0xFF1A1F38),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// ==================== QUOTE MODEL ====================
class Quote {
  final String text;
  final String author;
  final String category;

  const Quote({
    required this.text,
    required this.author,
    required this.category,
  });
}

// ==================== QUOTE DATA ====================
class QuoteData {
  static const List<Quote> quotes = [
    // Motivational
    Quote(
      text: "The only way to do great work is to love what you do.",
      author: "Steve Jobs",
      category: "Motivational",
    ),
    Quote(
      text: "Believe you can and you're halfway there.",
      author: "Theodore Roosevelt",
      category: "Motivational",
    ),
    Quote(
      text: "It does not matter how slowly you go as long as you do not stop.",
      author: "Confucius",
      category: "Motivational",
    ),
    Quote(
      text: "The future belongs to those who believe in the beauty of their dreams.",
      author: "Eleanor Roosevelt",
      category: "Motivational",
    ),
    Quote(
      text: "Success is not final, failure is not fatal: it is the courage to continue that counts.",
      author: "Winston Churchill",
      category: "Motivational",
    ),
    Quote(
      text: "Don't watch the clock; do what it does. Keep going.",
      author: "Sam Levenson",
      category: "Motivational",
    ),
    Quote(
      text: "The secret of getting ahead is getting started.",
      author: "Mark Twain",
      category: "Motivational",
    ),
    Quote(
      text: "You are never too old to set another goal or to dream a new dream.",
      author: "C.S. Lewis",
      category: "Motivational",
    ),
    Quote(
      text: "What you get by achieving your goals is not as important as what you become by achieving your goals.",
      author: "Zig Ziglar",
      category: "Motivational",
    ),
    Quote(
      text: "Hardships often prepare ordinary people for an extraordinary destiny.",
      author: "C.S. Lewis",
      category: "Motivational",
    ),

    // Life
    Quote(
      text: "In the middle of every difficulty lies opportunity.",
      author: "Albert Einstein",
      category: "Life",
    ),
    Quote(
      text: "Life is what happens when you're busy making other plans.",
      author: "John Lennon",
      category: "Life",
    ),
    Quote(
      text: "The purpose of our lives is to be happy.",
      author: "Dalai Lama",
      category: "Life",
    ),
    Quote(
      text: "Life is really simple, but we insist on making it complicated.",
      author: "Confucius",
      category: "Life",
    ),
    Quote(
      text: "The unexamined life is not worth living.",
      author: "Socrates",
      category: "Life",
    ),
    Quote(
      text: "Turn your wounds into wisdom.",
      author: "Oprah Winfrey",
      category: "Life",
    ),
    Quote(
      text: "The only impossible journey is the one you never begin.",
      author: "Tony Robbins",
      category: "Life",
    ),
    Quote(
      text: "In this life we cannot do great things. We can only do small things with great love.",
      author: "Mother Teresa",
      category: "Life",
    ),
    Quote(
      text: "Life is either a daring adventure or nothing at all.",
      author: "Helen Keller",
      category: "Life",
    ),
    Quote(
      text: "You only live once, but if you do it right, once is enough.",
      author: "Mae West",
      category: "Life",
    ),

    // Wisdom
    Quote(
      text: "The only true wisdom is in knowing you know nothing.",
      author: "Socrates",
      category: "Wisdom",
    ),
    Quote(
      text: "In the end, it's not the years in your life that count. It's the life in your years.",
      author: "Abraham Lincoln",
      category: "Wisdom",
    ),
    Quote(
      text: "The mind is everything. What you think you become.",
      author: "Buddha",
      category: "Wisdom",
    ),
    Quote(
      text: "An investment in knowledge pays the best interest.",
      author: "Benjamin Franklin",
      category: "Wisdom",
    ),
    Quote(
      text: "The only thing we have to fear is fear itself.",
      author: "Franklin D. Roosevelt",
      category: "Wisdom",
    ),
    Quote(
      text: "Knowing yourself is the beginning of all wisdom.",
      author: "Aristotle",
      category: "Wisdom",
    ),
    Quote(
      text: "The fool doth think he is wise, but the wise man knows himself to be a fool.",
      author: "William Shakespeare",
      category: "Wisdom",
    ),
    Quote(
      text: "It is the mark of an educated mind to be able to entertain a thought without accepting it.",
      author: "Aristotle",
      category: "Wisdom",
    ),
    Quote(
      text: "By three methods we may learn wisdom: by reflection, which is noblest; by imitation, which is easiest; and by experience, which is the bitterest.",
      author: "Confucius",
      category: "Wisdom",
    ),
    Quote(
      text: "The measure of intelligence is the ability to change.",
      author: "Albert Einstein",
      category: "Wisdom",
    ),

    // Success
    Quote(
      text: "Success usually comes to those who are too busy to be looking for it.",
      author: "Henry David Thoreau",
      category: "Success",
    ),
    Quote(
      text: "Don't be afraid to give up the good to go for the great.",
      author: "John D. Rockefeller",
      category: "Success",
    ),
    Quote(
      text: "I find that the harder I work, the more luck I seem to have.",
      author: "Thomas Jefferson",
      category: "Success",
    ),
    Quote(
      text: "Success is walking from failure to failure with no loss of enthusiasm.",
      author: "Winston Churchill",
      category: "Success",
    ),
    Quote(
      text: "The way to get started is to quit talking and begin doing.",
      author: "Walt Disney",
      category: "Success",
    ),
    Quote(
      text: "If you really look closely, most overnight successes took a long time.",
      author: "Steve Jobs",
      category: "Success",
    ),
    Quote(
      text: "The road to success and the road to failure are almost exactly the same.",
      author: "Colin R. Davis",
      category: "Success",
    ),
    Quote(
      text: "Opportunities don't happen. You create them.",
      author: "Chris Grosser",
      category: "Success",
    ),
    Quote(
      text: "I never dreamed about success, I worked for it.",
      author: "Estée Lauder",
      category: "Success",
    ),
    Quote(
      text: "It is better to fail in originality than to succeed in imitation.",
      author: "Herman Melville",
      category: "Success",
    ),

    // Happiness
    Quote(
      text: "Happiness is not something ready made. It comes from your own actions.",
      author: "Dalai Lama",
      category: "Happiness",
    ),
    Quote(
      text: "The most important thing is to enjoy your life — to be happy — it's all that matters.",
      author: "Audrey Hepburn",
      category: "Happiness",
    ),
    Quote(
      text: "Happiness depends upon ourselves.",
      author: "Aristotle",
      category: "Happiness",
    ),
    Quote(
      text: "The happiness of your life depends upon the quality of your thoughts.",
      author: "Marcus Aurelius",
      category: "Happiness",
    ),
    Quote(
      text: "Count your age by friends, not years. Count your life by smiles, not tears.",
      author: "John Lennon",
      category: "Happiness",
    ),
    Quote(
      text: "Be happy for this moment. This moment is your life.",
      author: "Omar Khayyam",
      category: "Happiness",
    ),
    Quote(
      text: "The only joy in the world is to begin.",
      author: "Cesare Pavese",
      category: "Happiness",
    ),
    Quote(
      text: "Happiness is a warm puppy.",
      author: "Charles M. Schulz",
      category: "Happiness",
    ),
    Quote(
      text: "Think of all the beauty still left around you and be happy.",
      author: "Anne Frank",
      category: "Happiness",
    ),
    Quote(
      text: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.",
      author: "Marcus Aurelius",
      category: "Happiness",
    ),

    // Courage
    Quote(
      text: "Courage is not the absence of fear, but the triumph over it.",
      author: "Nelson Mandela",
      category: "Courage",
    ),
    Quote(
      text: "You gain strength, courage, and confidence by every experience in which you really stop to look fear in the face.",
      author: "Eleanor Roosevelt",
      category: "Courage",
    ),
    Quote(
      text: "Life shrinks or expands in proportion to one's courage.",
      author: "Anaïs Nin",
      category: "Courage",
    ),
    Quote(
      text: "Have the courage to follow your heart and intuition.",
      author: "Steve Jobs",
      category: "Courage",
    ),
    Quote(
      text: "It takes courage to grow up and become who you really are.",
      author: "E.E. Cummings",
      category: "Courage",
    ),

    // Leadership
    Quote(
      text: "A leader is one who knows the way, goes the way, and shows the way.",
      author: "John C. Maxwell",
      category: "Leadership",
    ),
    Quote(
      text: "The greatest leader is not the one who does the greatest things, but the one who gets people to do the greatest things.",
      author: "Ronald Reagan",
      category: "Leadership",
    ),
    Quote(
      text: "Innovation distinguishes between a leader and a follower.",
      author: "Steve Jobs",
      category: "Leadership",
    ),
    Quote(
      text: "Before you are a leader, success is all about growing yourself. When you become a leader, success is all about growing others.",
      author: "Jack Welch",
      category: "Leadership",
    ),
    Quote(
      text: "Leadership is not about being in charge. It's about taking care of those in your charge.",
      author: "Simon Sinek",
      category: "Leadership",
    ),

    // Creativity
    Quote(
      text: "Creativity is intelligence having fun.",
      author: "Albert Einstein",
      category: "Creativity",
    ),
    Quote(
      text: "The chief enemy of creativity is good sense.",
      author: "Pablo Picasso",
      category: "Creativity",
    ),
    Quote(
      text: "Creativity takes courage.",
      author: "Henri Matisse",
      category: "Creativity",
    ),
    Quote(
      text: "To live a creative life, we must lose our fear of being wrong.",
      author: "Joseph Chilton Pearce",
      category: "Creativity",
    ),
    Quote(
      text: "Everything you can imagine is real.",
      author: "Pablo Picasso",
      category: "Creativity",
    ),

    // Perseverance
    Quote(
      text: "Our greatest glory is not in never falling, but in rising every time we fall.",
      author: "Confucius",
      category: "Perseverance",
    ),
    Quote(
      text: "Fall seven times, stand up eight.",
      author: "Japanese Proverb",
      category: "Perseverance",
    ),
    Quote(
      text: "Perseverance is not a long race; it is many short races one after the other.",
      author: "Walter Elliot",
      category: "Perseverance",
    ),
    Quote(
      text: "The only guarantee for failure is to quit.",
      author: "John C. Maxwell",
      category: "Perseverance",
    ),
    Quote(
      text: "A river cuts through rock, not because of its power, but because of its persistence.",
      author: "Jim Watkins",
      category: "Perseverance",
    ),

    // Change
    Quote(
      text: "Be the change that you wish to see in the world.",
      author: "Mahatma Gandhi",
      category: "Change",
    ),
    Quote(
      text: "The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking.",
      author: "Albert Einstein",
      category: "Change",
    ),
    Quote(
      text: "Change is the law of life. And those who look only to the past or present are certain to miss the future.",
      author: "John F. Kennedy",
      category: "Change",
    ),
    Quote(
      text: "Progress is impossible without change, and those who cannot change their minds cannot change anything.",
      author: "George Bernard Shaw",
      category: "Change",
    ),
    Quote(
      text: "Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.",
      author: "Rumi",
      category: "Change",
    ),

    // Knowledge
    Quote(
      text: "Education is the most powerful weapon which you can use to change the world.",
      author: "Nelson Mandela",
      category: "Knowledge",
    ),
    Quote(
      text: "The more that you read, the more things you will know. The more that you learn, the more places you'll go.",
      author: "Dr. Seuss",
      category: "Knowledge",
    ),
    Quote(
      text: "Live as if you were to die tomorrow. Learn as if you were to live forever.",
      author: "Mahatma Gandhi",
      category: "Knowledge",
    ),
    Quote(
      text: "Real knowledge is to know the extent of one's ignorance.",
      author: "Confucius",
      category: "Knowledge",
    ),
    Quote(
      text: "Knowledge speaks, but wisdom listens.",
      author: "Jimi Hendrix",
      category: "Knowledge",
    ),
  ];

  static final List<String> categories = quotes
      .map((q) => q.category)
      .toSet()
      .toList()
    ..sort();

  static List<Quote> getByCategory(String category) {
    if (category == 'All') return quotes;
    return quotes.where((q) => q.category == category).toList();
  }
}

// ==================== COLORS ====================
class AppColors {
  static const primary = Color(0xFF6C63FF);
  static const secondary = Color(0xFFFF6584);
  static const bg = Color(0xFF0A0E21);
  static const card = Color(0xFF1A1F38);
  static const cardLight = Color(0xFF242942);

  static const List<List<Color>> gradients = [
    [Color(0xFF6C63FF), Color(0xFF4834DF)],
    [Color(0xFFFF6584), Color(0xFFFF4757)],
    [Color(0xFF00D2D3), Color(0xFF01A3A4)],
    [Color(0xFFFFA502), Color(0xFFFF6348)],
    [Color(0xFF2ED573), Color(0xFF17A85B)],
    [Color(0xFFE056A0), Color(0xFFC44569)],
    [Color(0xFF7B68EE), Color(0xFF6C5CE7)],
    [Color(0xFF00CEC9), Color(0xFF0984E3)],
    [Color(0xFFFF7675), Color(0xFFD63031)],
    [Color(0xFFA29BFE), Color(0xFF6C5CE7)],
  ];
}

// ==================== CATEGORY ICONS ====================
Map<String, IconData> categoryIcons = {
  'All': Icons.auto_awesome,
  'Motivational': Icons.local_fire_department,
  'Life': Icons.favorite,
  'Wisdom': Icons.psychology,
  'Success': Icons.emoji_events,
  'Happiness': Icons.sentiment_very_satisfied,
  'Courage': Icons.shield,
  'Leadership': Icons.groups,
  'Creativity': Icons.palette,
  'Perseverance': Icons.fitness_center,
  'Change': Icons.change_circle,
  'Knowledge': Icons.menu_book,
};

// ==================== HOME SCREEN ====================
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late Quote _currentQuote;
  String _selectedCategory = 'All';
  final Random _random = Random();
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;
  int _quoteIndex = 0;
  List<Quote> _filteredQuotes = [];
  bool _isFavorite = false;
  final List<Quote> _favorites = [];

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
    );

    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
    );

    _filteredQuotes = QuoteData.getByCategory(_selectedCategory);
    _getRandomQuote();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  void _getRandomQuote() {
    _fadeController.reset();
    _slideController.reset();

    setState(() {
      if (_filteredQuotes.isEmpty) {
        _filteredQuotes = QuoteData.quotes.toList();
      }
      _quoteIndex = _random.nextInt(_filteredQuotes.length);
      _currentQuote = _filteredQuotes[_quoteIndex];
      _isFavorite = _favorites.any((q) =>
          q.text == _currentQuote.text && q.author == _currentQuote.author);
    });

    _fadeController.forward();
    _slideController.forward();
  }

  void _toggleFavorite() {
    _scaleController.forward().then((_) => _scaleController.reverse());

    setState(() {
      if (_isFavorite) {
        _favorites.removeWhere((q) =>
            q.text == _currentQuote.text && q.author == _currentQuote.author);
      } else {
        _favorites.add(_currentQuote);
      }
      _isFavorite = !_isFavorite;
    });
  }

  void _copyQuote() {
    Clipboard.setData(ClipboardData(
      text: '"${_currentQuote.text}" — ${_currentQuote.author}',
    ));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white, size: 20),
            SizedBox(width: 8),
            Text('Quote copied to clipboard!'),
          ],
        ),
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _shareQuote() {
    Clipboard.setData(ClipboardData(
      text: '"${_currentQuote.text}"\n\n— ${_currentQuote.author}\n\n#QuoteVerse #${_currentQuote.category}',
    ));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Row(
          children: [
            Icon(Icons.share, color: Colors.white, size: 20),
            SizedBox(width: 8),
            Text('Quote copied for sharing!'),
          ],
        ),
        backgroundColor: AppColors.secondary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _selectCategory(String category) {
    setState(() {
      _selectedCategory = category;
      _filteredQuotes = QuoteData.getByCategory(category);
    });
    _getRandomQuote();
  }

  List<Color> _getGradient() {
    int index = QuoteData.categories.indexOf(_currentQuote.category);
    if (index < 0) index = 0;
    return AppColors.gradients[index % AppColors.gradients.length];
  }

  @override
  Widget build(BuildContext context) {
    final gradient = _getGradient();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.primary,
                        AppColors.secondary,
                      ]),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(Icons.format_quote,
                        color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 12),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [AppColors.primary, AppColors.secondary],
                    ).createShader(bounds),
                    child: const Text(
                      'QuoteVerse',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Favorites button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FavoritesScreen(
                            favorites: _favorites,
                            onRemove: (quote) {
                              setState(() {
                                _favorites.removeWhere((q) =>
                                    q.text == quote.text &&
                                    q.author == quote.author);
                                _isFavorite = _favorites.any((q) =>
                                    q.text == _currentQuote.text &&
                                    q.author == _currentQuote.author);
                              });
                            },
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.1)),
                      ),
                      child: Stack(
                        children: [
                          const Icon(Icons.favorite,
                              color: AppColors.secondary, size: 22),
                          if (_favorites.isNotEmpty)
                            Positioned(
                              right: -2,
                              top: -2,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: AppColors.secondary,
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  '${_favorites.length}',
                                  style: const TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Category Chips
            SizedBox(
              height: 48,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: ['All', ...QuoteData.categories].map((cat) {
                  final isSelected = _selectedCategory == cat;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: GestureDetector(
                      onTap: () => _selectCategory(cat),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          gradient: isSelected
                              ? LinearGradient(
                                  colors: [
                                    AppColors.primary,
                                    AppColors.primary.withOpacity(0.7)
                                  ],
                                )
                              : null,
                          color: isSelected ? null : AppColors.card,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: isSelected
                                ? Colors.transparent
                                : Colors.white.withOpacity(0.1),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              categoryIcons[cat] ?? Icons.auto_awesome,
                              size: 16,
                              color: isSelected
                                  ? Colors.white
                                  : Colors.white54,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              cat,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 16),

            // Quote Card
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.card,
                            AppColors.cardLight,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(
                          color: gradient[0].withOpacity(0.3),
                          width: 1.5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: gradient[0].withOpacity(0.15),
                            blurRadius: 30,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          // Category badge at top
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: gradient),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  categoryIcons[_currentQuote.category] ??
                                      Icons.auto_awesome,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  _currentQuote.category,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Quote text
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  28, 24, 28, 12),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.format_quote,
                                    size: 40,
                                    color: gradient[0].withOpacity(0.5),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    _currentQuote.text,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      height: 1.5,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    width: 40,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      gradient:
                                          LinearGradient(colors: gradient),
                                      borderRadius:
                                          BorderRadius.circular(2),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    '— ${_currentQuote.author}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: gradient[0],
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Action buttons row
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20, 0, 20, 20),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                _ActionButton(
                                  icon: Icons.copy_rounded,
                                  label: 'Copy',
                                  onTap: _copyQuote,
                                  color: Colors.white54,
                                ),
                                _ActionButton(
                                  icon: Icons.share_rounded,
                                  label: 'Share',
                                  onTap: _shareQuote,
                                  color: Colors.white54,
                                ),
                                ScaleTransition(
                                  scale: _scaleAnimation,
                                  child: _ActionButton(
                                    icon: _isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    label: 'Save',
                                    onTap: _toggleFavorite,
                                    color: _isFavorite
                                        ? AppColors.secondary
                                        : Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Quote counter
            Text(
              '${_quoteIndex + 1} of ${_filteredQuotes.length} quotes',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white.withOpacity(0.4),
                letterSpacing: 0.5,
              ),
            ),

            const SizedBox(height: 12),

            // New Quote Button
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
              child: GestureDetector(
                onTap: _getRandomQuote,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: gradient,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: gradient[0].withOpacity(0.4),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.auto_awesome, color: Colors.white, size: 22),
                      SizedBox(width: 10),
                      Text(
                        'New Quote',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== ACTION BUTTON ====================
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color color;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== FAVORITES SCREEN ====================
class FavoritesScreen extends StatefulWidget {
  final List<Quote> favorites;
  final Function(Quote) onRemove;

  const FavoritesScreen({
    super.key,
    required this.favorites,
    required this.onRemove,
  });

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.1)),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white, size: 20),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.favorite,
                      color: AppColors.secondary, size: 24),
                  const SizedBox(width: 8),
                  const Text(
                    'Saved Quotes',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.secondary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${widget.favorites.length}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Favorites List
            Expanded(
              child: widget.favorites.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border,
                              size: 80,
                              color: Colors.white.withOpacity(0.2)),
                          const SizedBox(height: 16),
                          Text(
                            'No saved quotes yet',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Tap the heart icon to save quotes',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: widget.favorites.length,
                      itemBuilder: (context, index) {
                        final quote = widget.favorites[index];
                        final catIndex =
                            QuoteData.categories.indexOf(quote.category);
                        final gradient = AppColors.gradients[
                            catIndex >= 0
                                ? catIndex % AppColors.gradients.length
                                : 0];

                        return Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: AppColors.card,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: gradient[0].withOpacity(0.2),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: gradient),
                                      borderRadius:
                                          BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      quote.category,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      widget.onRemove(quote);
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: AppColors.secondary,
                                      size: 22,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Text(
                                '"${quote.text}"',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                '— ${quote.author}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: gradient[0],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}