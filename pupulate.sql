INSERT INTO Player(player_name, nationality, ht, wt)
VALUES ('Stephen Curry', 'United States', '6-3', 190);
INSERT INTO Player(player_name, nationality, ht, wt)
VALUES ('Anthony Davis', 'United States', '6-0', 150);
INSERT INTO Player(player_name, nationality, ht, wt)
VALUES ('Klay Thompson', 'Greece Nigeria', '6-11', 204);
INSERT INTO Player(player_name, nationality, ht, wt)
VALUES ('Kyle Lowry', 'Spain', '6-7', 194);


INSERT INTO Year(years) VALUES (2004);
INSERT INTO Year(years) VALUES (2010);
INSERT INTO Year(years) VALUES (2007);
INSERT INTO Year(years) VALUES (2014);
INSERT INTO Year(years) VALUES (2012);

INSERT INTO Team(teams) VALUES('Golden State Warriors');
INSERT INTO Team(teams) VALUES('New Orleans Pelicans');
INSERT INTO Team(teams) VALUES('Utah Jazz');
INSERT INTO Team(teams) VALUES('Los Angeles Clippers');

INSERT INTO feature(player_name, years, teams, position)
VALUES ('Kyle Lowry', 2012, 'Utah Jazz', 'G');
INSERT INTO feature(player_name, years, teams, position)
VALUES ('Klay Thompson', 2007, 'Los Angeles Clippers', 'C');
INSERT INTO feature(player_name, years, teams, position)
VALUES ('Stephen Curry', 2007, 'Los Angeles Clippers', 'G');
INSERT INTO feature(player_name, years, teams, position)
VALUES ('Klay Thompson', 2010, 'Utah Jazz', 'F');
INSERT INTO feature(player_name, years, teams, position)
VALUES ('Anthony Davis', 2012, 'New Orleans Pelicans', 'C');

INSERT INTO enemy_team(enemy_teams) VALUES('New Orleans Pelicans');
INSERT INTO enemy_team(enemy_teams) VALUES('Detroit Pistons');
INSERT INTO enemy_team(enemy_teams) VALUES('Miami Heat');
INSERT INTO enemy_team(enemy_teams) VALUES('Atlanta Hawks');

INSERT INTO game(player_name, years, teams, enemy_teams, score)
VALUES('Anthony Davis', 2012, 'New Orleans Pelicans', 'Miami Heat', 10);
INSERT INTO game(player_name, years, teams, enemy_teams, score)
VALUES('Klay Thompson', 2007, 'Los Angeles Clippers', 'Detroit Pistons', 13);
INSERT INTO game(player_name, years, teams, enemy_teams, score)
VALUES('Klay Thompson', 2007, 'Los Angeles Clippers', 'Miami Heat', 7);
INSERT INTO game(player_name, years, teams, enemy_teams, score)
VALUES('Klay Thompson', 2010, 'Utah Jazz', 'Atlanta Hawks', 15);
INSERT INTO game(player_name, years, teams, enemy_teams, score)
VALUES('Anthony Davis', 2012, 'New Orleans Pelicans', 'Atlanta Hawks', 15);