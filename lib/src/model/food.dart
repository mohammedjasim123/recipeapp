class Food {
  String title;
  String description;
  String image;
  String ingredients;
  List<String> directions;

  Food(
      {required this.title,
      required this.description,
      required this.image,
      required this.ingredients,
      required this.directions});
}

final List<Food> items = [
  Food(
      title: 'Avocado and Black Bean Quesadillas',
      description:
          'Cheesy quesadillas filled with creamy avocado and black beans.',
      image:
          'https://spicecravings.com/wp-content/uploads/2019/10/Bean-Quesadilla-6.jpg',
      ingredients:
          'Flour tortillas, 2 avocados (sliced), 1 can black beans (drained), 2 cups shredded cheddar cheese, Salsa for serving.',
      directions: [
        '1. Layer avocado, black beans, and cheese on half of each tortilla.',
        '2. Fold in half and cook on a griddle until cheese melts. Serve with salsa.',
      ]),
  Food(
      title: 'Lemon & Dill Shrimp Sandwiches',
      description: 'Light and refreshing option for lunch or dinner',
      image:
          'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps72240_SD153321B01_29_2b.jpg?fit=700%2C1024',
      ingredients:
          '4 hoagie buns, split,1 tablespoon butter,1 pound uncooked shrimp (41-50 per pound), peeled and deveined, 1/2 cup mayonnaise,2 tablespoons lemon juice, 4 teaspoons snipped fresh dill or 1-1/4 teaspoons dill weed , 1/2 teaspoon salt","1/4 teaspoon pepper, Optional: Lettuce leaves and sliced tomato',
      directions: [
        '1. Hollow out bun bottoms, leaving a 1/2-in. shell (save removed bread for another use). In a large skillet, heat butter over medium heat. Add shrimp; cook and stir 3-4 minutes or until shrimp turn pink.',
        '2. In a small bowl, mix mayonnaise, lemon juice, dill, salt and pepper until blended. Add shrimp; toss to coat. Spoon shrimp mixture into bun bottoms. If desired, top with lettuce and tomato. Replace bun tops.'
      ]),
  Food(
      title: 'Iced Caramel Macchiato',
      description:
          'A delightful and indulgent iced coffee drink with layers of espresso, milk, and caramel.',
      image:
          'https://gatherforbread.com/wp-content/uploads/2017/04/Iced-Caramel-Macchiato-16-683x1024-1.jpg',
      ingredients:
          '1 cup ice, 1 cup cold milk, 2 shots of espresso, 2 tablespoons caramel syrup.',
      directions: [
        '1. Fill a glass with ice and pour cold milk over it.',
        '2. Slowly add the shots of espresso on top of the milk. Drizzle caramel syrup over the top.',
      ]),
  Food(
      title: 'Grilled Chicken Caesar Wraps',
      description:
          'A savory and satisfying wrap for a quick and flavorful meal.',
      image:
          'https://carlsbadcravings.com/wp-content/uploads/2023/06/Chicken-Caesar-Wrap-6.jpg',
      ingredients:
          '4 large tortillas, 1 lb grilled chicken breast strips, 1 cup shredded Parmesan, 1 cup cherry tomatoes (halved), 1/2 cup Caesar dressing, 2 cups fresh lettuce, Salt and pepper to taste.',
      directions: [
        '1. Warm tortillas and set aside.',
        '2. In a bowl, combine chicken, Parmesan, tomatoes, lettuce, and Caesar dressing. Season with salt and pepper.',
        '3. Spoon the mixture onto the center of each tortilla and fold into a wrap.'
      ]),
  Food(
      title: 'Chocolate Raspberry Tart',
      description:
          'A decadent chocolate tart with a luscious raspberry filling, perfect for chocolate lovers.',
      image:
          'https://atsloanestable.com/wp-content/uploads/2022/04/chocolate-raspberry-tart1.jpg',
      ingredients:
          'For the crust - 1 1/2 cups chocolate cookie crumbs, 1/2 cup melted butter. For the filling - 1 cup dark chocolate chips, 1/2 cup heavy cream, 1 cup fresh raspberries.',
      directions: [
        '1. Mix cookie crumbs and melted butter, press into a tart pan to form the crust.',
        '2. Heat cream and pour over chocolate chips. Stir until smooth. Pour into the crust and top with fresh raspberries.',
      ]),
  Food(
      title: 'Caprese Salad Skewers',
      description:
          'A delightful and colorful appetizer featuring classic Caprese flavors.',
      image:
          'https://www.dinneratthezoo.com/wp-content/uploads/2017/11/caprese-skewers-4.jpg',
      ingredients:
          'Cherry tomatoes, fresh mozzarella balls, fresh basil leaves, balsamic glaze, salt, and pepper.',
      directions: [
        '1. Thread a tomato, mozzarella ball, and basil leaf onto each skewer.',
        '2. Arrange skewers on a platter, drizzle with balsamic glaze, and sprinkle with salt and pepper.'
      ]),
  Food(
      title: 'Teriyaki Salmon Bowls',
      description:
          'A flavorful and healthy bowl with teriyaki-glazed salmon and fresh vegetables.',
      image:
          'https://onebalancedlife.com/wp-content/uploads/2022/09/Teriyaki-Salmon-Bowls-scaled-735x980.jpg',
      ingredients:
          '4 cups cooked brown rice, 4 salmon fillets, 1/2 cup teriyaki sauce, 2 cups broccoli florets, 1 cup sliced carrots, Sesame seeds for garnish.',
      directions: [
        '1. Grill or bake salmon fillets, brushing with teriyaki sauce.',
        '2. Steam broccoli and carrots until tender.',
        '3. Assemble bowls with rice, salmon, and vegetables. Garnish with sesame seeds.'
      ]),
];
