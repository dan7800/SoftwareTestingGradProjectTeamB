package com.google.android.gm.provider;

import java.util.*;
import android.text.*;

public final class bi
{
    public String abh;
    public String ayV;
    public boolean ayX;
    public long bhx;
    public long bku;
    public long blA;
    public int blB;
    @Deprecated
    public String blC;
    public byte[] blD;
    public long blE;
    public Gmail$PersonalLevel blF;
    public Set<Long> blG;
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("conversationId: ").append(this.bku);
        sb.append(", sortMessageId: ").append(this.bhx);
        sb.append(", maxMessageId: ").append(this.blA);
        sb.append(", numMessage: ").append(this.blB);
        sb.append(", date: ").append(this.blE);
        if (this.ayV != null) {
            sb.append(", subject: ").append(this.ayV);
        }
        if (this.abh != null) {
            sb.append(", snippet: ").append(this.abh);
        }
        sb.append(", hasAttachments: ").append(this.ayX);
        if (this.blC != null) {
            sb.append(", fromAddress: '").append(this.blC.replace('\n', '|')).append('\'');
        }
        if (this.blD != null) {
            sb.append(", fromCompact: '").append(Arrays.toString(this.blD));
        }
        sb.append(", labelIds: ").append(TextUtils.join((CharSequence)"|", (Iterable)this.blG));
        return sb.toString();
    }
}
