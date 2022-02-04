select r.id, fecha_inicial, fecha_final, p.total, c.nombre as nombreCard, h.namehotel,ro.room_number,
ro.room_type,ex.name as Servicio, po.nombre,po.apellido  
from reservation as r
inner join pos as p on p.id = r.pos_id
inner join card as c on c.id = r.card_id
inner join room as ro on ro.reservation_id = r.id
inner join hotel as h on h.id = ro.hotel_id
inner join reservation_general_extras as re on re.reservation_id  = r.id
inner join servicios_extra as ex on ex.id = re.general_extra_id
inner join reservation_guests as rg on rg.reservation_id = r.id
inner join profile as po on po.id = rg.guest_id

select * from reservation
select * from card
select * from hotel
select * from pos
select * from profile
select * from room
select * from servicios_extra
select * from reservation_general_extras