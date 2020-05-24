create or replace PACKAGE player_pkg is 

    type player_row_type is RECORD(
        name_player feature.player_name%TYPE,
        score game.score%TYPE
    );
     type player_table_type_params is table OF player_row_type;
     
     
     PROCEDURE Delete_player_from_team(names  IN varchar2, team  IN varchar2, years IN feature.years%TYPE);
     
     FUNCTION Get_pos_years(years_game int DEFAULT 2010, pos feature.position%Type)
    RETURN player_table_type_params
    PIPELINED;

end player_pkg;
/
create or REPLACE PACKAGE body player_pkg is

        PROCEDURE Delete_player_from_team(
        names  IN varchar2,
        team  IN varchar2, 
        years IN feature.years%TYPE
        )
        is
            ch_name feature.player_name%TYPE;
            ch_team feature.teams%TYPE;
            
        BEGIN
            
            select player_name into ch_name from feature where player_name = names and teams = team and years = years;
            
            delete from game where player_name = names and teams = team and years = years;

            delete from feature where player_name = names and teams = team and years = years;
            
            EXCEPTION
            WHEN no_data_found  THEN
                dbms_output.put_line('Player or team not found');
        END;


        FUNCTION Get_pos_years(years_game int DEFAULT 2010, pos feature.position%Type)
        RETURN player_table_type_params
        PIPELINED
        is BEGIN
            
            for iter in (
                            select feature.player_name as name, game.score as score
                            from feature
                            INNER join game on feature.player_name = game.player_name and feature.years = game.years
                            where game.years = years_game and feature.position = pos
                        )
            loop 
                pipe row(iter);
            end loop;
            
        end;
end player_pkg;