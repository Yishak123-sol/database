class Food {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final bool isAvailable;

  Food({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.isAvailable,
  });
}

List<Food> foodItems = [
  Food(
    id: '1',
    name: 'Pizza',
    description: 'Delicious pizza with various toppings',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.Lr1GKEqWmmYqwhlBdrVMDQHaFj&%3Bpid=Api&w=122&c=1&rs=1&qlt=95&h=91',
    price: 10.99,
    isAvailable: true,
  ),
  Food(
    id: '2',
    name: 'Burger',
    description: 'Juicy burger with cheese and veggies',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.g_EYshV4TBrKFonMmN2KEgHaE7&%3Bpid=Api&w=162&c=1&rs=1&qlt=95&h=107',
    price: 8.99,
    isAvailable: true,
  ),
  Food(
    id: '3',
    name: 'Pasta',
    description: 'Spaghetti with marinara sauce',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.dxFnJKfMGgi7b_dztN0xoAHaE8&%3Bpid=Api&w=161&c=1&rs=1&qlt=95&h=107',
    price: 12.99,
    isAvailable: true,
  ),
  Food(
    id: '4',
    name: 'Sushi',
    description: 'Fresh and delicious sushi rolls',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.tthrfA3_XcrCA5TWrdkbSwHaE6&%3Bpid=Api&w=150&c=1&rs=1&qlt=95&h=99',
    price: 15.99,
    isAvailable: true,
  ),
  Food(
    id: '5',
    name: 'Salad',
    description: 'Healthy salad with mixed greens',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.xiJ8WAb_SxNAaOysCw3KkwHaE6&%3Bpid=Api&w=166&c=1&rs=1&qlt=95&h=109',
    price: 7.99,
    isAvailable: true,
  ),
  Food(
    id: '6',
    name: 'Steak',
    description: 'Tender and juicy steak',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.Ua_IOmOR9bFWFvryTxk0oAHaE8&%3Bpid=Api&w=183&c=1&rs=1&qlt=95&h=122',
    price: 19.99,
    isAvailable: true,
  ),
  Food(
    id: '7',
    name: 'Tacos',
    description: 'Authentic Mexican tacos',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.kfb7I7wvPJad2QJDoiEV9AHaEh&%3Bpid=Api&w=187&c=1&rs=1&qlt=95&h=114',
    price: 9.99,
    isAvailable: true,
  ),
  Food(
    id: '8',
    name: 'Sushi Burrito',
    description: 'A fusion of sushi and burrito',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.RWtOYk7ySKPJ3PuwRflOvwHaFj&%3Bpid=Api&w=142&c=1&rs=1&qlt=95&h=107',
    price: 11.99,
    isAvailable: true,
  ),
  Food(
    id: '9',
    name: 'Chicken Wings',
    description: 'Crispy chicken wings with various sauces',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.vMaoLiL2YA-FbVR4BvzlcgHaE7&%3Bpid=Api&w=187&c=1&rs=1&qlt=95&h=124',
    price: 8.99,
    isAvailable: true,
  ),
  Food(
    id: '10',
    name: 'Ice Cream',
    description: 'Creamy and delightful ice cream',
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.T1r7b6xTrmMemzZgXQfVDAHaEK&%3Bpid=Api&w=201&c=1&rs=1&qlt=95&h=113',
    price: 6.99,
    isAvailable: true,
  ),
];
