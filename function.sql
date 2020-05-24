CREATE TYPE player_rows as OBJECT (
    name_player VARCHAR(100),
    score NUMBER(20)
)
/
CREATE TYPE player_table_type IS TABLE OF player_rows;

CREATE OR REPLACE FUNCTION Get_pos_years(years_game int DEFAULT 2010, pos feature.position%Type)
RETURN player_table_type
PIPELINED
is BEGIN
    
    for iter in (
                    select feature.player_name as name, game.score as score
                    from feature
                    INNER join game on feature.player_name = game.player_name and feature.years = game.years
                    where game.years = years_game and feature.position = pos
                )
    loop 
        pipe row(player_rows(
            iter.name,
            iter.score
        ));
    end loop;
    
end;
