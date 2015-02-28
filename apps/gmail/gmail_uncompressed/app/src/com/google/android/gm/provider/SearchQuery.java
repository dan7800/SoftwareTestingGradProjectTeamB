package com.google.android.gm.provider;

import android.database.sqlite.*;

public final class SearchQuery
{
    private final String bmR;
    private final String[] eP;
    
    public SearchQuery(final String s, final String[] array) {
        this.bmR = array[0];
        if (!this.bmR.equals("documents") && !this.bmR.equals("tags")) {
            throw new IllegalArgumentException("Unknown type: " + this.bmR);
        }
        (this.eP = new String[3])[0] = s;
        this.eP[1] = array[1];
        this.eP[2] = array[2];
    }
    
    public final boolean HK() {
        return Long.valueOf(this.eP[1]) <= 0L;
    }
    
    public final SQLiteDatabase$CursorFactory HL() {
        return (SQLiteDatabase$CursorFactory)new bx(this.bmR);
    }
    
    public final String getRawQuery() {
        if (this.bmR.equals("documents")) {
            return "SELECT search_sequence._id AS seqno,   CASE search_sequence.action WHEN 0 THEN 'add' WHEN 1 THEN 'del' END AS action,   'content://gmail-ls/account/' || ? || '/conversationId/' ||     search_sequence.conversationId || '/maxServerMessageId/0/labels/msg-' ||     search_sequence.messageId AS uri,   messages.dateSentMs / 1000 AS doc_score,   messages.conversation AS section_conversation,   messages.messageId AS section_message_id,   messages.fromAddress AS section_from_address,   messages.toAddresses || x'0a' || messages.ccAddresses || x'0a' ||     messages.bccAddresses AS section_to_addresses,   messages.subject AS section_subject,   CASE WHEN messages.bodyCompressed IS NULL THEN 0 || messages.body     ELSE 1 || messages.bodyCompressed END AS section_body FROM search_sequence LEFT OUTER JOIN messages ON search_sequence.messageId = messages.messageId WHERE search_sequence._id > ? AND search_sequence.type = 0 ORDER BY search_sequence._id LIMIT ?;";
        }
        return "SELECT search_sequence._id AS seqno,   CASE search_sequence.action WHEN 0 THEN 'add' WHEN 1 THEN 'del' END AS action,   'content://gmail-ls/account/' || ? || '/conversationId/' ||     search_sequence.conversationId || '/maxServerMessageId/0/labels/msg-' ||     search_sequence.messageId AS uri,   labels.canonicalName AS tag FROM search_sequence INNER JOIN labels ON search_sequence.labelId = labels._id WHERE search_sequence._id > ? AND search_sequence.type = 1 ORDER BY search_sequence._id LIMIT ?;";
    }
    
    public final String[] getSelectionArgs() {
        return this.eP;
    }
}
