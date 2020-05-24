CREATE OR REPLACE PROCEDURE Delete_player_from_team(
names  IN varchar2,
team  IN varchar2, 
years IN feature.years%TYPE
)
is
    ch_name feature.player_name%TYPE;
    ch_team feature.teams%TYPE;
    
BEGIN
    
    select player_name into ch_name from feature where player_name = names and teams = team and years = years;
    
    
    delete from feature where player_name = names and teams = team and years = years;
    
    EXCEPTION
    WHEN no_data_found  THEN
        dbms_output.put_line('Player or team not found');
END;
/
