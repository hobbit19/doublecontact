/* Double Contact
 *
 * Module: Nokia NBF backup file import
 *
 * Copyright 2016 Mikhail Y. Zvyozdochkin aka DarkHobbit <pub@zvyozdochkin.ru>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version. See COPYING file for more details.
 *
 */

#ifndef NBFFILE_H
#define NBFFILE_H

#include "fileformat.h"
#include "../common/vcarddata.h"

class NBFFile : public FileFormat, VCardData
{
public:
    NBFFile();

    // IFormat interface
public:
    static bool detect(const QString &url);
    static QStringList supportedExtensions();
    static QStringList supportedFilters();
    bool importRecords(const QString &url, ContactList &list, bool append);
    bool exportRecords(const QString &url, ContactList &list);
};

#endif // NBFFILE_H
