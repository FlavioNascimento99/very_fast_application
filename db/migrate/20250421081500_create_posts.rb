# This is a simple Ruby App Migration, here's a breakdown about it.

# First of all we created a class that inherits "ActiveRecord" from On Rails.
# Second one, that's LITERALLY Class into Class (Migration onto ActiveRecord)
# Third one, c'mon is not LITERALLY a Class into Class, it's more like, Namespace(ActiveRecord) with a Class(Migration)
class CreatePosts < ActiveRecord::Migration[7.0]

  # "change" method is called when we run "rails db:migrate" command, that did something like "move or change"(Into
  # DB Context make's more sense).
  def change

    # Here's basically "if that table doesn't do exists, create one with those things"
    # "create_table" is one of methods existing into Migration Class. (Another great one is called add_column)
    create_table :posts do |t|

      # Those things I mean, attributes from post (Yeah, that class I've been created some minutes ago)
      t.string :title
      t.text :content

      # Just for logs, you know
      t.timestamps
    end
  end
end