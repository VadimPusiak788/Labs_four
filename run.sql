INSERT INTO game(player_name, years, teams, enemy_teams, score)
VALUES('New Orleans Pelicans', 2012, 'New Orleans Pelicans', 'New Orleans Pelicans', 10);

exec player_pkg.Delete_player_from_team('Anthony Davis', 'New Orleans Pelicans', 2012);
exec player_pkg.Delete_player_from_team('Anthony', 'New Pelicans', 2012);
exec player_pkg.Delete_player_from_team('Kyle Lowry', 'New Orleans Pelicans', 2012);
exec player_pkg.Delete_player_from_team('Kyle Lowry', 'Utah Jazz', 2012);

select * from Table(player_pkg.get_pos_years(2007, 'G'));
select * from Table(player_pkg.get_pos_years(2010, 'F'));