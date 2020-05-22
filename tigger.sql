CREATE OR REPLACE TRIGGER Game_trig
    BEFORE INSERT OR UPDATE
    ON Game
    FOR EACH ROW
BEGIN 
    IF :NEW.teams = :NEW.enemy_teams
    THEN
        RAISE_APPLICATION_ERROR(-20001, 'Teams are same');
    END IF;
END;