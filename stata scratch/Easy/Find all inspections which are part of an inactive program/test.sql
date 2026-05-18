select * from los_angeles_restaurant_health_inspections
WHERE program_status = 'inactive';


-- Find all inspections which are part of an inactive program


-- Table
-- los_angeles_restaurant_health_inspections


-- activity_date:       date
-- employee_id:         text
-- facility_address:    text
-- facility_city:       text
-- facility_id:         text
-- facility_name:       text
-- facility_state:      text
-- facility_zip:        text
-- grade:               text
-- owner_id:            text
-- owner_name:          text
-- pe_description:      text
-- program_element_pe:  bigint
-- program_name:        text
-- program_status:      text
-- record_id:           text
-- score:               bigint
-- serial_number:       text
-- service_code:        bigint
-- service_description: text