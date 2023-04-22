import 'dart:io';

enum CategoryStatus {
  Active,
  Inactive,
}

class Category {
  String name;
  CategoryStatus status;

  Category(this.name, this.status);

  void edit({String? name, CategoryStatus? status}) {
    if (name != null) this.name = name;
    if (status != null) this.status = status;
  }
}

class CategoryMaster {
  List<Category> categories = [];

  void add(Category category) {
    categories.add(category);
  }

  void uploadXls(File file) {
    // Code to upload XLS file
  }

  File downloadTemplate() {
    // Code to download XLS template
    return File('category_template.xls');
  }

  List<Category> getCategories() {
    // Code to fetch categories from database or file
    return categories;
  }
}
