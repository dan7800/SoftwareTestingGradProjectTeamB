package com.google.android.gm.provider;

import android.database.sqlite.*;
import android.database.*;
import android.content.*;
import com.android.mail.utils.*;

final class bf extends x
{
    static final String TAG;
    
    static {
        TAG = D.AU();
    }
    
    bf(final MailEngine mailEngine, final SQLiteDatabase sqLiteDatabase) {
        super(mailEngine, sqLiteDatabase);
    }
    
    private void Hi() {
        this.bcJ.execSQL("DROP TABLE IF EXISTS search_status");
        this.bcJ.execSQL("CREATE TABLE search_status (_id INTEGER PRIMARY KEY, app_data_search_enabled INTEGER)");
        this.cb(false);
    }
    
    private boolean Hl() {
        boolean b = true;
        final Cursor rawQuery = this.bcJ.rawQuery("SELECT app_data_search_enabled FROM search_status WHERE _id = 0", (String[])null);
        try {
            if (rawQuery.moveToNext()) {
                if (rawQuery.getInt(0) != (b ? 1 : 0)) {
                    b = false;
                }
                return b;
            }
            return false;
        }
        finally {
            rawQuery.close();
        }
    }
    
    private void Hm() {
        this.bcJ.execSQL("DROP INDEX IF EXISTS search_sequence_messageId_type_labelId");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS insert_messages");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS update_messages");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS update_messages_keychange");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS delete_messages");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS insert_message_labels");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS update_message_labels");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS delete_message_labels");
        this.bcJ.execSQL("DROP TABLE IF EXISTS search_sequence");
    }
    
    private void Hn() {
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS insert_messages");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS update_messages");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS update_messages_keychange");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS delete_messages");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS insert_message_labels");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS update_message_labels");
        this.bcJ.execSQL("DROP TRIGGER IF EXISTS delete_message_labels");
        this.bcJ.execSQL("CREATE TRIGGER insert_messages AFTER INSERT ON messages\nBEGIN\n" + "  INSERT INTO search_sequence (type,action,messageId,conversationId)  VALUES(0,0,  new.messageId, new.conversation);\n" + "END;");
        this.bcJ.execSQL("CREATE TRIGGER update_messages AFTER UPDATE ON messages\nWHEN new.messageId = old.messageId AND new.conversation = old.conversation\nBEGIN\n" + "  INSERT INTO search_sequence (type,action,messageId,conversationId)  VALUES(0,0,  new.messageId, new.conversation);\n" + "END;");
        this.bcJ.execSQL("CREATE TRIGGER update_messages_keychange AFTER UPDATE ON messages\nWHEN new.messageId != old.messageId OR new.conversation != old.conversation\nBEGIN\n" + "  DELETE FROM search_sequence WHERE messageId = old.messageId\n  AND type IN (0,1);\n  INSERT INTO search_sequence (type,action,messageId,conversationId)  VALUES(0,1,  old.messageId, old.conversation);\n" + "  INSERT INTO search_sequence (type,action,messageId,conversationId)  VALUES(0,0,  new.messageId, new.conversation);\n" + "END;");
        this.bcJ.execSQL("CREATE TRIGGER delete_messages AFTER DELETE ON messages\nBEGIN\n" + "  DELETE FROM search_sequence WHERE messageId = old.messageId\n  AND type IN (0,1);\n  INSERT INTO search_sequence (type,action,messageId,conversationId)  VALUES(0,1,  old.messageId, old.conversation);\n" + "END;");
        this.bcJ.execSQL("CREATE TRIGGER insert_message_labels AFTER INSERT ON message_labels\nBEGIN\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,0,  new.message_messageId, new.message_conversation, new.labels_id);\nEND;");
        this.bcJ.execSQL("CREATE TRIGGER update_message_labels AFTER UPDATE ON message_labels\nBEGIN\n  DELETE FROM search_sequence WHERE messageId = old.message_messageId\n  AND type = 1 AND labelId = old.labels_id;\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,1,  old.message_messageId, old.message_conversation, old.labels_id);\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,0,  new.message_messageId, old.message_conversation, new.labels_id);\nEND;");
        this.bcJ.execSQL("CREATE TRIGGER delete_message_labels AFTER DELETE ON message_labels\nBEGIN\n  DELETE FROM search_sequence WHERE messageId = old.message_messageId\n  AND type = 1 AND labelId = old.labels_id;\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,1,  old.message_messageId, old.message_conversation, old.labels_id);\nEND;");
    }
    
    private void Ho() {
        this.Hm();
        this.bcJ.execSQL("CREATE TABLE search_sequence (\n_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER NOT NULL DEFAULT 0, action INTEGER NOT NULL DEFAULT 0, messageId INTEGER NOT NULL DEFAULT 0, conversationId INTEGER NOT NULL DEFAULT 0, labelId INTEGER NOT NULL DEFAULT 0);");
        this.Hn();
        this.bcJ.execSQL("CREATE INDEX search_sequence_messageId_type_labelId ON search_sequence (messageId,type,labelId)");
        this.bcJ.execSQL("INSERT INTO search_sequence (type,action,messageId,conversationId)  SELECT 0,0,  messageId,conversation FROM messages;");
        this.bcJ.execSQL("INSERT INTO search_sequence (type,action,messageId,conversationId,labelId) SELECT 1,0, message_messageId,message_conversation,labels_id FROM message_labels;");
    }
    
    private void Hp() {
        this.bcJ.execSQL("DROP TABLE IF EXISTS dasher_info");
        this.bcJ.execSQL("CREATE TABLE dasher_info (\n  _id INTEGER PRIMARY KEY,\n  domainTitle TEXT);");
    }
    
    private void Hq() {
        MailEngine.a(this.bcJ, "startSyncNeeded", "1");
        this.bdz.FR();
    }
    
    private void cb(final boolean b) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("_id", 0);
        int n = 0;
        if (b) {
            n = 1;
        }
        contentValues.put("app_data_search_enabled", n);
        this.bcJ.replace("search_status", (String)null, contentValues);
    }
    
    @Override
    public final void DU() {
        E.d(MailEngine.TAG, "Bootstrapping db: %s Current version is %d", this.bcJ.getPath(), this.bcJ.getVersion());
        this.bcJ.execSQL("DROP TABLE IF EXISTS sync_settings");
        this.bcJ.execSQL("CREATE TABLE sync_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))");
        this.bcJ.execSQL("DROP TABLE IF EXISTS engine_settings");
        this.bcJ.execSQL("CREATE TABLE engine_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))");
        this.bcJ.execSQL("DROP TABLE IF EXISTS messages");
        this.bcJ.execSQL("CREATE TABLE messages (_id INTEGER PRIMARY KEY,messageId INTEGER,conversation INTEGER,fromAddress TEXT,toAddresses TEXT,ccAddresses TEXT,bccAddresses TEXT,replyToAddresses TEXT,dateSentMs INTEGER,dateReceivedMs INTEGER,subject TEXT,snippet TEXT,listInfo TEXT,personalLevel INTEGER,body TEXT,bodyEmbedsExternalResources INTEGER,joinedAttachmentInfos STRING,synced INTEGER,error TEXT, clientCreated INTEGER, refMessageId INTEGER DEFAULT 0, forward INTEGER DEFAULT 0, includeQuotedText INTEGER DEFAULT 0, quoteStartPos INTEGER DEFAULT 0, bodyCompressed BLOB DEFAULT NULL, customFromAddress TEXT DEFAULT NULL, queryId INTEGER DEFAULT 1, spamDisplayedReasonType INTEGER,deliveryChannel INTEGER,referencesRfc822MessageIds TEXT,showSendersFullEmailAddress INTEGER,viaDomain TEXT,showForgedFromMeWarning INTEGER,refAdEventId TEXT,permalink TEXT,clipped INTEGER DEFAULT 0,UNIQUE(messageId))");
        this.bcJ.execSQL("DROP TABLE IF EXISTS attachments");
        this.bcJ.execSQL("CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT, priority INTEGER DEFAULT 0, mimeType TEXT DEFAULT NULL, size INTEGER DEFAULT 0, UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))");
        this.bcJ.execSQL("CREATE INDEX attachment_downloadid ON attachments (downloadId)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS labels");
        this.bcJ.execSQL("CREATE TABLE labels ( _id INTEGER PRIMARY KEY, canonicalName TEXT, name TEXT, numConversations TEXT, numUnreadConversations TEXT, color INTEGER DEFAULT 2147483647, systemLabel INTEGER DEFAULT 0, systemLabelOrder INTEGER DEFAULT 0, hidden INTEGER DEFAULT 0, labelCountDisplayBehavior INTEGER DEFAULT 0, labelSyncPolicy INTEGER DEFAULT 0, visibility TEXT, lastTouched INTEGER DEFAULT 0, numUnseenConversations INTEGER DEFAULT 0, lastMessageTimestamp INTEGER NOT NULL DEFAULT 0)");
        this.bcJ.execSQL("CREATE INDEX labels_index ON labels (_id, canonicalName, numConversations, numUnreadConversations)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS message_labels");
        this.bcJ.execSQL("CREATE TABLE message_labels (_id INTEGER PRIMARY KEY,labels_id INTEGER not null,message_messageId INTEGER not null,message_conversation INTEGER,UNIQUE (labels_id, message_messageId))");
        this.bcJ.execSQL("CREATE INDEX message_labels_index ON message_labels (labels_id, message_messageId, message_conversation)");
        this.bcJ.execSQL("CREATE INDEX message_labels_conversation ON message_labels (message_conversation, labels_id)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS operations");
        this.bcJ.execSQL("CREATE TABLE operations (_id INTEGER PRIMARY KEY AUTOINCREMENT,action TEXT,message_messageId INTEGER,value1 INTEGER,value2 INTEGER, numAttempts INTEGER DEFAULT 0, nextTimeToAttempt INTEGER DEFAULT 0, delay INTEGER DEFAULT 0, value3 TEXT, value4 TEXT, value5 TEXT, value6 TEXT, value7 TEXT, value8 TEXT )");
        this.bcJ.execSQL("CREATE INDEX operations_messageid_action_index ON operations (message_messageId, action)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS conversations_to_fetch");
        this.bcJ.execSQL("CREATE TABLE conversations_to_fetch (_id INTEGER PRIMARY KEY, nextAttemptDateMs INTEGER DEFAULT 0, numAttempts INTEGER DEFAULT 0)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch");
        this.bcJ.execSQL("CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS messages_to_fetch");
        this.bcJ.execSQL("CREATE TABLE messages_to_fetch (_id INTEGER PRIMARY KEY)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS conversation_labels;");
        this.bcJ.execSQL("CREATE TABLE conversation_labels (  labels_id TEXT,   queryId INTEGER,   isZombie INTEGER,   sortMessageId INTEGER,   date INTEGER,   conversation_id INTEGER,   UNIQUE(labels_id, queryId, conversation_id));");
        this.bcJ.execSQL("CREATE INDEX conversation_labels_index ON conversation_labels (labels_id, sortMessageId, queryId, isZombie, date, conversation_id);");
        this.bcJ.execSQL("CREATE INDEX conversationLabels_conversationIndex ON conversation_labels (conversation_id, labels_id)");
        this.bcJ.execSQL("CREATE INDEX conversationLabels_queryId ON conversation_labels (queryId)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS conversations");
        this.bcJ.execSQL("CREATE TABLE conversations (_id INTEGER, queryId INTEGER, subject TEXT, snippet TEXT, fromAddress TEXT, fromProtoBuf BLOB,fromCompact BLOB,personalLevel INTEGER, labelIds TEXT, numMessages INTEGER, maxMessageId INTEGER, hasAttachments INTEGER, hasMessagesWithErrors INTEGER, syncRationale STRING, syncRationaleMessageId INTEGER, forceAllUnread INTEGER, dirty INTEGER DEFAULT 0, unreadMessageId INTEGER DEFAULT 0, unreadMessageLocalId INTEGER DEFAULT 0, attachmentPreviews TEXT DEFAULT NULL, attachmentPreviewStates INTEGER DEFAULT 0, attachmentPreviewsCount INTEGER DEFAULT 0, permalink TEXT DEFAULT NULL, UNIQUE(_id, queryId));");
        this.bcJ.execSQL("CREATE INDEX conversations_syncRationale on conversations (syncRationale, syncRationaleMessageId);");
        this.bcJ.execSQL("CREATE INDEX conversations_queryId on conversations (queryId);");
        this.bcJ.execSQL("CREATE INDEX labels_name on labels (canonicalName);");
        this.bcJ.execSQL("CREATE INDEX labels_id on labels (_id);");
        this.bcJ.execSQL("CREATE INDEX message_labels_message_messageId_labels_id on message_labels (message_messageId, labels_id);");
        this.bcJ.execSQL("CREATE INDEX messages_messageId on messages (messageId);");
        this.bcJ.execSQL("CREATE INDEX messages_queryId on messages (queryId);");
        this.bcJ.execSQL("CREATE INDEX messages_conversation on messages (conversation, messageId);");
        this.bcJ.execSQL("CREATE INDEX messages_messageId_queryId on messages (messageId, queryId);");
        this.bcJ.execSQL("CREATE INDEX messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos);");
        this.bcJ.execSQL("CREATE INDEX messages_conversation_queryId on messages (conversation, queryId)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS custom_label_color_prefs");
        this.bcJ.execSQL("CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);");
        this.bcJ.execSQL("DROP TABLE IF EXISTS custom_from_prefs");
        this.bcJ.execSQL("CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  address TEXT,\n  is_default TEXT,\n  reply_to TEXT);");
        this.bcJ.execSQL("DROP TABLE IF EXISTS server_preferences");
        this.bcJ.execSQL("CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT,\n  blobValue BLOB DEFAULT NULL);");
        this.bcJ.execSQL("DROP TABLE IF EXISTS info_overload");
        this.Hi();
        this.bcJ.execSQL("DROP TABLE IF EXISTS ads");
        this.bcJ.execSQL("CREATE TABLE ads (_id INTEGER PRIMARY KEY, event_id TEXT, advertiser_name TEXT, title TEXT, line1 TEXT, visible_url TEXT, advertiser_image_data BLOB, body TEXT, expiration INTEGER, reason INTEGER, apm_extra_targeting_data TEXT, starred INTEGER, view_status INTEGER, view TEXT, slot TEXT, apm_xsrf_token TEXT, delete_status INTEGER DEFAULT 0, redirect_url TEXT, wta_data TEXT, view_url TEXT, click_url TEXT, interaction_url TEXT, obfuscated_data TEXT, report_ad_server INTEGER, report_bow INTEGER, send_body INTEGER, click_id TEXT, UNIQUE(event_id))");
        this.Hp();
        this.bcJ.setVersion(154);
    }
    
    public final void Hj() {
        if (this.bcJ.isReadOnly()) {
            E.f(MailEngine.TAG, "Trying to setup search with read-only database reference", new Object[0]);
            return;
        }
        final boolean gd = this.bdz.Gd();
        final boolean hl = this.Hl();
        this.bdz.Gz();
        Label_0098: {
            if (!gd) {
                break Label_0098;
            }
        Label_0083:
            while (true) {
                if (hl) {
                    break Label_0083;
                }
                while (true) {
                    try {
                        E.d(MailEngine.TAG, "Setting up for AppDataSearch", new Object[0]);
                        MailIndexerService.G(this.bcJ);
                        this.Ho();
                        this.cb(true);
                        this.bdz.setTransactionSuccessful();
                        return;
                        // iftrue(Label_0145:, !hl)
                        E.d(MailEngine.TAG, "Setting up for FTS search", new Object[0]);
                        this.Hm();
                        MailIndexerService.H(this.bcJ);
                        this.cb(false);
                        continue Label_0083;
                    }
                    finally {
                        this.bdz.endTransaction();
                    }
                    Label_0145: {
                        MailIndexerService.I(this.bcJ);
                    }
                    continue Label_0083;
                }
                break;
            }
        }
    }
    
    public final void Hk() {
        if (!this.Hl()) {
            return;
        }
        this.bdz.Gz();
        try {
            MailIndexerService.G(this.bcJ);
            this.Ho();
            this.cb(true);
            this.bdz.setTransactionSuccessful();
        }
        finally {
            this.bdz.endTransaction();
        }
    }
    
    @Override
    final int dM(final int n) {
        if (n >= 52 && n < 100) {
            return 100;
        }
        return n + 1;
    }
    
    public final void upgradeDbTo100() {
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN systemLabel INTEGER DEFAULT 0");
        this.bcJ.execSQL("UPDATE labels SET systemLabel = 1 WHERE substr(canonicalName, 1, 1) = '^'");
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN systemLabelOrder INTEGER DEFAULT 0");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 1 WHERE canonicalName = '^i'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = '^t'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = '^b'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = '^f'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = '^^out'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = '^r'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = '^all'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = '^s'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = '^k'");
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN hidden INTEGER DEFAULT 0");
        this.bcJ.execSQL("UPDATE labels SET hidden = 1 WHERE substr(canonicalName, 1, 1) = '^' AND canonicalName NOT IN ('^i', '^t', '^b', '^f', '^^out', '^r', '^all', '^s', '^k')");
    }
    
    public final void upgradeDbTo101() {
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN labelCountDisplayBehavior INTEGER DEFAULT 0");
        this.bcJ.execSQL("UPDATE labels SET labelCountDisplayBehavior = 1 WHERE canonicalName IN ('^^out', '^r', '^s')");
        this.bcJ.execSQL("UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName IN ('^f', '^t', '^b', '^all', '^k')");
    }
    
    public final void upgradeDbTo102() {
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN labelSyncPolicy INTEGER DEFAULT 0");
        this.bcJ.execSQL("UPDATE labels SET labelSyncPolicy = 1 WHERE canonicalName IN ('^^out', '^r')");
        this.bcJ.execSQL("UPDATE labels SET labelSyncPolicy = 2 WHERE canonicalName IN ('^s', '^b', '^all', '^k')");
        this.bcJ.execSQL("UPDATE labels SET labelSyncPolicy = 3 WHERE canonicalName IN ('^i', '^f')");
    }
    
    public final void upgradeDbTo103() {
        int i = 0;
        final SQLiteDatabase bcJ = this.bcJ;
        final SQLiteDatabase biu = this.bdz.biu;
        final ContentValues[] array = new ContentValues[Gmail.bdX.length];
        final StringBuilder sb = new StringBuilder();
        sb.append("select ");
        for (int j = 0; j < Gmail.bdX.length; ++j) {
            final String s = Gmail.bdX[j];
            if (j != 0) {
                sb.append(", ");
            }
            sb.append("(select value from sync_settings where name ='");
            sb.append(s);
            sb.append("') as ");
            sb.append(s);
            (array[j] = new ContentValues()).put("name", s);
        }
        final Cursor rawQuery = bcJ.rawQuery(sb.toString(), (String[])null);
        rawQuery.moveToNext();
        for (int k = 0; k < Gmail.bdX.length; ++k) {
            array[k].put("value", rawQuery.getString(k));
        }
        rawQuery.close();
        biu.beginTransactionNonExclusive();
        StringBuilder sb2;
        try {
            biu.delete("internal_sync_settings", (String)null, (String[])null);
            for (int length = array.length, l = 0; l < length; ++l) {
                biu.insert("internal_sync_settings", (String)null, array[l]);
            }
            biu.setTransactionSuccessful();
            biu.endTransaction();
            sb2 = new StringBuilder();
            sb2.append("delete from sync_settings where ");
            while (i < Gmail.bdX.length) {
                final String s2 = Gmail.bdX[i];
                sb2.append(" name ='");
                sb2.append(s2);
                sb2.append("'");
                if (i != 3) {
                    sb2.append(" OR ");
                }
                ++i;
            }
        }
        finally {
            biu.endTransaction();
        }
        bcJ.execSQL(sb2.toString());
        this.bdz.Gv();
    }
    
    public final void upgradeDbTo104() {
        this.Hq();
        this.bcJ.execSQL("DROP TABLE IF EXISTS custom_label_color_prefs");
        this.bcJ.execSQL("CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);");
    }
    
    public final void upgradeDbTo105() {
        this.Hq();
        this.bcJ.execSQL("DROP TABLE IF EXISTS custom_from_prefs");
        this.bcJ.execSQL("CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  is_default TEXT,\n  reply_to TEXT);");
    }
    
    public final void upgradeDbTo106() {
        this.Hq();
        this.bcJ.execSQL("DROP TABLE IF EXISTS server_preferences");
        this.bcJ.execSQL("CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT);");
    }
    
    public final void upgradeDbTo107() {
        this.Hq();
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN visibility TEXT");
    }
    
    public final void upgradeDbTo108() {
        this.Hq();
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = '^io_im'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = '^b'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = '^f'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = '^^out'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = '^r'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = '^all'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = '^s'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = '^k'");
        this.bcJ.execSQL("DROP TABLE IF EXISTS info_overload");
    }
    
    public final void upgradeDbTo109() {
        this.bcJ.execSQL("ALTER TABLE attachments ADD COLUMN priority INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo110() {
        if (this.bdA < 100 && this.bdA >= 53) {
            E.e(MailEngine.TAG, "skipping v110 mailstore upgrade due to initial version %d", this.bdA);
            return;
        }
        this.bcJ.execSQL("ALTER TABLE conversations_to_fetch ADD COLUMN nextAttemptDateMs INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE conversations_to_fetch ADD COLUMN numAttempts INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo111() {
        if (this.bdA < 100 && this.bdA >= 54) {
            E.e(MailEngine.TAG, "skipping v111 mailstore upgrade due to initial version %d", this.bdA);
            return;
        }
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN customFromAddress TEXT DEFAULT NULL");
    }
    
    public final void upgradeDbTo112() {
        this.Hq();
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = '^iim'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = '^t'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = '^io_im'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = '^b'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = '^f'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = '^^out'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = '^r'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = '^all'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = '^s'");
        this.bcJ.execSQL("UPDATE labels SET systemLabelOrder = 11 WHERE canonicalName = '^k'");
    }
    
    public final void upgradeDbTo113() {
        this.Hq();
    }
    
    public final void upgradeDbTo114() {
        this.bdz.Ga();
        this.bdz.FR();
    }
    
    public final void upgradeDbTo115() {
        this.Hq();
    }
    
    public final void upgradeDbTo116() {
        this.Hq();
        this.bcJ.execSQL("UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName = '^io_im'");
    }
    
    public final void upgradeDbTo117() {
        this.bcJ.execSQL("ALTER TABLE attachments ADD COLUMN mimeType TEXT DEFAULT NULL");
    }
    
    public final void upgradeDbTo118() {
        this.bcJ.execSQL("UPDATE labels SET labelSyncPolicy = 0 WHERE canonicalName = '^i'");
    }
    
    public final void upgradeDbTo119() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN queryId INTEGER DEFAULT 1");
        this.bcJ.execSQL("UPDATE messages SET queryId = 0 WHERE synced = 1");
        this.bcJ.execSQL("DELETE FROM messages where synced = 0");
        this.bcJ.execSQL("CREATE INDEX IF NOT EXISTS messages_queryId on messages (queryId);");
        this.bcJ.execSQL("DROP INDEX IF EXISTS messages_synced;");
    }
    
    public final void upgradeDbTo120() {
        MailIndexerService.H(this.bcJ);
    }
    
    public final void upgradeDbTo121() {
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN lastTouched INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo122() {
        this.Hq();
    }
    
    public final void upgradeDbTo123() {
        this.bcJ.execSQL("CREATE INDEX IF NOT EXISTS messages_messageId_queryId on messages (messageId, queryId);");
    }
    
    public final void upgradeDbTo124() {
        if (this.bdA < 100 && this.bdA >= 60) {
            E.e(MailEngine.TAG, "skipping v124 mailstore upgrade due to initial version %d", this.bdA);
            return;
        }
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN delay INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo125() {
        this.bcJ.execSQL("DROP TABLE IF EXISTS message_fts_table_index");
        this.bcJ.execSQL("CREATE TABLE message_fts_table_index(docid INTEGER PRIMARY KEY)");
        this.bcJ.execSQL("DROP TABLE IF EXISTS conversation_fts_table_index");
        this.bcJ.execSQL("CREATE TABLE conversation_fts_table_index(docid INTEGER PRIMARY KEY)");
    }
    
    public final void upgradeDbTo126() {
        this.bcJ.execSQL("CREATE INDEX IF NOT EXISTS messages_conversation_queryId on messages (conversation, queryId)");
    }
    
    public final void upgradeDbTo127() {
        this.Hq();
        this.bcJ.execSQL("DROP TABLE IF EXISTS custom_from_prefs");
        this.bcJ.execSQL("CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  address TEXT,\n  is_default TEXT,\n  reply_to TEXT);");
    }
    
    public final void upgradeDbTo128() {
        this.Hi();
    }
    
    public final void upgradeDbTo129() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN spamDisplayedReasonType INTEGER");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN deliveryChannel INTEGER");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN referencesRfc822MessageIds TEXT");
    }
    
    public final void upgradeDbTo130() {
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN fromProtoBuf BLOB");
    }
    
    public final void upgradeDbTo131() {
        this.bcJ.execSQL("DELETE FROM labels WHERE canonicalName='' AND name='';");
    }
    
    public final void upgradeDbTo132() {
        this.bcJ.execSQL("DROP TABLE IF EXISTS info_overload");
        this.Hq();
        this.bcJ.execSQL("ALTER TABLE server_preferences ADD COLUMN blobValue BLOB DEFAULT NULL;");
    }
    
    public final void upgradeDbTo133() {
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN numUnseenConversations INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo134() {
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN lastMessageTimestamp INTEGER NOT NULL DEFAULT 0");
    }
    
    public final void upgradeDbTo135() {
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN value3 TEXT");
    }
    
    public final void upgradeDbTo136() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN showSendersFullEmailAddress INTEGER");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN viaDomain TEXT");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN showForgedFromMeWarning INTEGER");
    }
    
    public final void upgradeDbTo137() {
        this.Hq();
    }
    
    public final void upgradeDbTo138() {
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN fromCompact BLOB");
    }
    
    public final void upgradeDbTo139() {
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN unreadMessageId INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN unreadMessageLocalId INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN attachmentPreviews TEXT DEFAULT NULL");
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN attachmentPreviewStates INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN attachmentPreviewsCount INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo140() {
        this.bcJ.execSQL("ALTER TABLE attachments ADD COLUMN size INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo141() {
    }
    
    public final void upgradeDbTo142() {
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN value4 TEXT");
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN value5 TEXT");
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN value6 TEXT");
    }
    
    public final void upgradeDbTo143() {
    }
    
    public final void upgradeDbTo144() {
    }
    
    public final void upgradeDbTo145() {
        this.bcJ.execSQL("DROP TABLE IF EXISTS ads");
        this.bcJ.execSQL("CREATE TABLE ads (_id INTEGER PRIMARY KEY, event_id TEXT, advertiser_name TEXT, title TEXT, line1 TEXT, visible_url TEXT, advertiser_image_data BLOB, body TEXT, expiration INTEGER, reason INTEGER, apm_extra_targeting_data TEXT, starred INTEGER, view_status INTEGER, view TEXT, slot TEXT, apm_xsrf_token TEXT, delete_status INTEGER DEFAULT 0, UNIQUE(event_id))");
    }
    
    public final void upgradeDbTo146() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN refAdEventId TEXT");
    }
    
    public final void upgradeDbTo147() {
        if (this.Hl()) {
            this.Hn();
        }
    }
    
    public final void upgradeDbTo148() {
        this.bcJ.execSQL("UPDATE conversations SET unreadMessageId = 0");
        this.bcJ.execSQL("UPDATE conversations SET unreadMessageLocalId = 0");
        this.bcJ.execSQL("UPDATE conversations SET attachmentPreviews = NULL");
        this.bcJ.execSQL("UPDATE conversations SET attachmentPreviewStates = 0");
        this.bcJ.execSQL("UPDATE conversations SET attachmentPreviewsCount = 0");
    }
    
    public final void upgradeDbTo149() {
    }
    
    public final void upgradeDbTo150() {
        this.Hp();
        this.Hq();
    }
    
    public final void upgradeDbTo151() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN permalink TEXT");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN clipped INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN permalink TEXT DEFAULT NULL");
    }
    
    public final void upgradeDbTo152() {
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN redirect_url TEXT");
    }
    
    public final void upgradeDbTo153() {
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN wta_data TEXT");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN view_url TEXT");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN click_url TEXT");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN interaction_url TEXT");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN obfuscated_data TEXT");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN report_ad_server INTEGER");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN report_bow INTEGER");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN send_body INTEGER");
        this.bcJ.execSQL("ALTER TABLE ads ADD COLUMN click_id TEXT");
    }
    
    public final void upgradeDbTo154() {
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN value7 TEXT");
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN value8 TEXT");
    }
    
    public final void upgradeDbTo37() {
        this.bcJ.execSQL("UPDATE conversations SET labelIds = ',' || labelIds");
    }
    
    public final void upgradeDbTo38() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN clientCreated INTEGER");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN refMessageId INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo39() {
        ae.E(this.bcJ);
    }
    
    public final void upgradeDbTo40() {
    }
    
    public final void upgradeDbTo41() {
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN numAttempts INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE operations ADD COLUMN nextTimeToAttempt INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo42() {
        this.Hq();
        this.bcJ.execSQL("ALTER TABLE labels ADD COLUMN color INTEGER DEFAULT 2147483647");
    }
    
    public final void upgradeDbTo43() {
        this.bcJ.execSQL("DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch");
        this.bcJ.execSQL("CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)");
    }
    
    public final void upgradeDbTo44() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN forward INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN includeQuotedText INTEGER DEFAULT 0");
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN quoteStartPos INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo45() {
        this.bcJ.execSQL("DROP TABLE IF EXISTS attachments");
        this.bcJ.execSQL("CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT, UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))");
    }
    
    public final void upgradeDbTo46() {
        this.bcJ.execSQL("CREATE INDEX IF NOT EXISTS attachment_downloadid ON attachments (downloadId)");
    }
    
    public final void upgradeDbTo47() {
        this.bcJ.execSQL("CREATE INDEX IF NOT EXISTS messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos)");
    }
    
    public final void upgradeDbTo48() {
        this.bcJ.execSQL("ALTER TABLE conversations ADD COLUMN dirty INTEGER DEFAULT 0");
    }
    
    public final void upgradeDbTo49() {
        this.bcJ.execSQL("ALTER TABLE messages ADD COLUMN bodyCompressed BLOB DEFAULT NULL");
    }
    
    public final void upgradeDbTo50() {
        this.bcJ.execSQL("CREATE INDEX IF NOT EXISTS conversations_queryId on conversations (queryId);");
        this.bcJ.execSQL("CREATE INDEX IF NOT EXISTS messages_synced on messages (synced);");
    }
    
    public final void upgradeDbTo51() {
        this.Hq();
        this.bcJ.execSQL("DROP TABLE IF EXISTS info_overload");
    }
    
    public final void upgradeDbTo52() {
        this.Hq();
    }
}
