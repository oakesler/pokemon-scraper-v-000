class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
<<<<<<< HEAD
  def self.save(name, type, db)
    db.execute( "INSERT INTO pokemon (name, type) VALUES (?, ?)", [name, type])
    #@id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
  def self.find(id, db)
    sql = "SELECT * FROM pokemon WHERE id = ?"
    result = db.execute(sql, id)[0]
    Pokemon.new(id: result[0], name: result[1], type: result[2], db: db)
=======
  def self.save(name:, type:, db:)
    db.execute( "INSERT INTO pokemon (name, type) VALUES (?, ?)", [name, type])
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
  def self.find
    sql = "SELECT * FROM pokemon WHERE id = ?"
    result = DB[:conn].execute(sql, self.id)[0]
    Pokemon.new(result[0], result[1], result[2])
>>>>>>> 0c8544854fdf274acb23607f8033dbbf904ce5c0
  end
end
