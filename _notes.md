Requirements

Your models must:
Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.
.... ish

Add more to models!



Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

• Your views should use helper methods and partials when appropriate.
• Follow patterns in the Rails Style Guide and the Ruby Style Guide.


• Logic present in your controllers should be encapsulated as methods in your models.

- NEw edit forms

EDIT and DESTROY Subs

You must include and make use of a nested resource with the appropriate RESTful URLs.

• You must include a nested new route with form that relates to the parent resource

• You must include a nested index or show route