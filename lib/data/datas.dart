import 'package:wallpapers_x/models/CategoryModel.dart';

List<CategoriesModel> getCategories()
{
  List<CategoriesModel> categories = new List();
  CategoriesModel categoriesModel = new CategoriesModel();

  // Category 1
  categoriesModel.imgUrl = "https://images.pexels.com/photos/3551498/pexels-photo-3551498.jpeg?cs=srgb&dl=pexels-aenic-3551498.jpg&fm=jpg";
  categoriesModel.name = "Animals";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // Category 2
  categoriesModel.imgUrl = "https://images.pexels.com/photos/1056251/pexels-photo-1056251.jpeg?cs=srgb&dl=pexels-ihsan-aditya-1056251.jpg&fm=jpg";
  categoriesModel.name = "Cats";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // Category 3
  categoriesModel.imgUrl = "https://images.pexels.com/photos/3136673/pexels-photo-3136673.jpeg?cs=srgb&dl=pexels-sourav-mishra-3136673.jpg&fm=jpg";
  categoriesModel.name = "Cars";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // Category 4
  categoriesModel.imgUrl = "https://images.pexels.com/photos/63325/grizzly-bears-playing-sparring-63325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.name = "Wild Life";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // Category 5
  categoriesModel.imgUrl = "https://images.pexels.com/photos/1671325/pexels-photo-1671325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.name = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
// Category 6
  categoriesModel.imgUrl = "https://images.pexels.com/photos/534590/pexels-photo-534590.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.name = "Horror";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
// Category 7
  categoriesModel.imgUrl = "https://images.pexels.com/photos/789786/pexels-photo-789786.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260";
  categoriesModel.name = "Baby";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // Category 8
  categoriesModel.imgUrl = "https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.name = "Place";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
  // Category 9
  categoriesModel.imgUrl = "https://images.pexels.com/photos/2387877/pexels-photo-2387877.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.name = "Space";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

// Category 10
  categoriesModel.imgUrl = "https://images.pexels.com/photos/1444442/pexels-photo-1444442.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.name = "Wedding";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

return categories;

}