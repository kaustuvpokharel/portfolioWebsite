//@author Kaustuv Pokharel
#include "colorlist.h"

ColorList::ColorList(QObject *parent)
    : QObject{parent}
{}

QString ColorList::color(QString cName) const
{
    /**
 * @brief Retrieves the hex color code corresponding to the given color name.
 *
 * This function looks up the provided color name in the internal map and returns the associated
 * hexadecimal color code as a QString. If the color name is not found, it throws a
 * `std::runtime_error` with an appropriate error message.
 *
 * @param cName The name of the color (e.g., "white", "black", "neon").
 *              This should be provided in lowercase.
 *
 * @return A QString representing the hex color code (e.g., "#F2F2F2" for white).
 *
 * @throws std::runtime_error If the provided color name is not found in the list.
 *
 * Example usage:
 * @code
 * QString hexColor = colorList.color("white");
 * @endcode
 */

    auto it = colorList.find(cName.toStdString());

    if( it == colorList.end())
    {
        throw std::runtime_error("No such named color assigned, please check the spelling. Note: use small letters for color names.");
    }
    return QString::fromStdString(it->second);
}
