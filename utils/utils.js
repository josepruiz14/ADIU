export function addStats({ event, riderStats }) {
  event.forEach((rider) => {
    riderStats[rider.rider_full_name]?.push(rider);
  });
}
