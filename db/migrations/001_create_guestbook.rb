Sequel.migration do
  up do
    create_table(:guestbook) do
      primary_key :id
      String :name
      String :message, text: true
      DateTime :created_at
    end
  end
end
