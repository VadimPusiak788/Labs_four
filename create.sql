CREATE TABLE Player(
    player_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    ht VARCHAR(10) NOT NULL,
    wt NUMBER(5) NOT NULL,
    CONSTRAINT name_pk PRIMARY KEY (player_name)
);
CREATE TABLE Year(
    years NUMBER(5) NOT NULL,
    CONSTRAINT year_pk PRIMARY KEY (years)
);
CREATE TABLE Team(
    teams VARCHAR(100) NOT NULL,
    CONSTRAINT team_pk PRIMARY KEY (teams)
);
CREATE TABLE Feature(
    player_name VARCHAR(100) NOT NULL,
    years NUMBER(5) NOT NULL,
    teams VARCHAR(100) NOT NULL,
    position VARCHAR(20) NOT NULL,
    CONSTRAINT feature_pk PRIMARY KEY (player_name, years, teams)
);
CREATE TABLE Enemy_team(
    enemy_teams VARCHAR(100) NOT NULL,
    CONSTRAINT enemy_pk PRIMARY KEY (enemy_teams)
);
CREATE TABLE Game(
    player_name VARCHAR(100) NOT NULL,
    years NUMBER(5) NOT NULL,
    teams VARCHAR(100) NOT NULL,
    enemy_teams VARCHAR(50) NOT NULL,
    score NUMBER(3),
    CONSTRAINT game_pk PRIMARY KEY (player_name, years, teams)
);

ALTER TABLE Feature
ADD CONSTRAINT fk_years
    FOREIGN KEY (years)
    REFERENCES Year(years);

ALTER TABLE Feature
ADD CONSTRAINT fk_team
    FOREIGN KEY (teams)
    REFERENCES  Team(teams);

ALTER TABLE Feature
ADD CONSTRAINT fk_player
    FOREIGN KEY (player_name)
    REFERENCES Player(player_name);

ALTER TABLE Game
ADD CONSTRAINT fk_teams
    FOREIGN KEY (teams, years, player_name)
    REFERENCES Feature(teams, years, player_name);

ALTER TABLE Game
ADD CONSTRAINT fk_enemy
    FOREIGN KEY (enemy_teams)
    REFERENCES Enemy_team(enemy_teams);
