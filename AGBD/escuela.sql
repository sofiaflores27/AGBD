INSERT INTO division (año, curso)
VALUES ("5º","D"),
       ("5º","B");
	   
INSERT INTO profesor (nombre,apellido)
VALUES ("Andres","Navarro"), ("Tomas", "Mayorga"),("Federico", "Villace"), ("Enrico", "Rovateli"), ("Maximiliano", "Urso"), ("Jose", "Albornoz"), ("Eduardo", "Menstrovich"), ("Alejandro", "Salomon"), ("Nahuel", "Aruni");

INSERT INTO materias (nombre, año)
VALUES ("base de datos", 5), ("diseño multimedial", 5), ("redes de datos", 5),("diseño software", 5), ("adm. y gestion d base de datos", 5), ("programacion web", 5);

INSERT INTO asignacion(materias_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM materias
        WHERE nombre = "programacion web"),(SELECT profesor_id FROM profesor
		WHERE nombre = "Federico"),(SELECT division_id FROM division
		WHERE año = "5º" AND curso = "D"));