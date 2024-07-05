-- SUCH VIEWS ARE INSERTABLE
CREATE OR REPLACE VIEW city_view AS 
SELECT * FROM city c;

SELECT * FROM city_view;

INSERT into city_view (city_name, city_code)
VALUES ('PIMPRI-CHINCHWAD', 'MH14');

-- DROP VIEW
DROP VIEW city_view;

