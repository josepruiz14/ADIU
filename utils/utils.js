export function addStats({ event, riderStats }) {
    event.forEach((rider) => {
      riderStats[rider.classification_rider_full_name]?.push(rider);
    });
  }