                             Task Galaxy ER Diagram

```
+-----------------------------------+      +------------------------------------+
|            users                  |      |              tasks                 |
+-----------------------------------+      +------------------------------------+
| t.string "email", null: false     |      |  t.string  "name",null: false      |
| t.string "first_name"             |      |  t.text    "descripton"            |
| t.string "last_name"              <------+  t.date    "due_date"              |
|                                   |      |  t.integer "user_id"               |
| validates :email, presence: true  |      |                                    |
| has_many :task_lists              |      |  belongs_to :user                  |
|                                   |      |  has_one :user                     |
|                                   |      |  validates :name, presence: true   |
|                                   |      |                                    |
+--------^--------------------------+      +-------------------^----------------+
         |                                                     |
         |                                                     |
         |     +-----------------------------------------+     |
         +----->               task_lists                +-----+
               +-----------------------------------------+
               |                                         |                              
               |  t.text    "tasks"                      |
               |  t.string  "name", null: false          |
               |  t.text    "description"                |
               |  t.integer "user_ids"                   |
               |                                         |
               |  has_many :tasks, dependent: :destroy   |
               |  has_many :users                        |
               |                                         |
               +-----------------------------------------+
```
