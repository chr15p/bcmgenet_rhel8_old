#include <stddef.h> 
#include <linux/phy.h>
#include <linux/mii.h>

/**
 * mdio_find_bus - Given the name of a mdiobus, find the mii_bus.
 * @mdio_bus_np: Pointer to the mii_bus.
 *
 * Returns a reference to the mii_bus, or NULL if none found.  The
 * embedded struct device will have its reference count incremented,
 * and this must be put_deviced'ed once the bus is finished with.
 */
int device_name_starts_with(struct device *dev, const void *name)
{
        return strstarts(dev_name(dev), name)==1;
}

struct device *mdio_find_device(const char *mdio_name)
{
	struct device *d;

	d = bus_find_device(&mdio_bus_type, NULL, mdio_name, device_name_starts_with);

	return d;
}
 




