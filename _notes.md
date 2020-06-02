Requirements

Your models must:
Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.


Your forms should correctly display validation errors.
a. Your fields should be enclosed within a fields_with_errors class
b. Error messages describing the validation failures must be present within the view.


Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
• Logic present in your controllers should be encapsulated as methods in your models.
• Your views should use helper methods and partials when appropriate.
• Follow patterns in the Rails Style Guide and the Ruby Style Guide.

