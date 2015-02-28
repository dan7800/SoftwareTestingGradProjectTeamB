package com.android.ex.chips;

import android.provider.*;

final class s
{
    public static final v adi;
    public static final v adj;
    
    static {
        adi = new t(new String[] { "display_name", "data1", "data2", "data3", "contact_id", "_id", "photo_thumb_uri", "display_name_source", "lookup", "mimetype" }, ContactsContract$CommonDataKinds$Phone.CONTENT_FILTER_URI, ContactsContract$CommonDataKinds$Phone.CONTENT_URI);
        adj = new u(new String[] { "display_name", "data1", "data2", "data3", "contact_id", "_id", "photo_thumb_uri", "display_name_source", "lookup", "mimetype" }, ContactsContract$CommonDataKinds$Email.CONTENT_FILTER_URI, ContactsContract$CommonDataKinds$Email.CONTENT_URI);
    }
}
