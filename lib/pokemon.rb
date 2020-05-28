class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

<<<<<<< HEAD
  def self.save (name, type, db)
=======
  def save
>>>>>>> c83bb8f8a61e8c9360486f27ae6635109c678812
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
    SQL
<<<<<<< HEAD
    db.execute(sql, name, type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end

  def self.find(id, db)
    sql = "SELECT * FROM pokemon WHERE id = ?"
    result = db.execute(sql, id).flatten
    Pokemon.new(id: result[0], name: result[1], type: result[2], db: db)
  end
=======
    DB[:conn].execute(sql, self.name, self.type)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
end
>>>>>>> c83bb8f8a61e8c9360486f27ae6635109c678812

end
