    SELECT 
        `c`.`year` AS `year`,
        `c`.`country` AS `country`,
        `c`.`city` AS `city`,
        `c`.`avg_temp` AS `avg_temp_city`,
        `g`.`avg_temp` AS `avg_temp_global`
    FROM
        (`city_data` `c` JOIN `global_data` `g` ON ((`c`.`year` = `g`.`year`)))
    WHERE
        ((`c`.`city` IN ('Vienna' , 'New York', 'Amsterdam',
                               'Delhi', 'Shanghai', 'Lagos', 'Sydney')));