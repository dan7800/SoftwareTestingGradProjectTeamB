.class public final Lcom/android/email/provider/i;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/J;


# instance fields
.field private final PJ:J

.field private final Sc:I

.field private final Sd:Lcom/android/mail/providers/FolderList;

.field private final cV:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mail/providers/Folder;J)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 66
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    .line 67
    iput-wide p4, p0, Lcom/android/email/provider/i;->PJ:J

    .line 68
    iput-object p1, p0, Lcom/android/email/provider/i;->mContext:Landroid/content/Context;

    .line 69
    new-array v1, v6, [Lcom/android/mail/providers/Folder;

    aput-object p3, v1, v0

    invoke-static {v1}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/providers/FolderList;->p(Ljava/util/Collection;)Lcom/android/mail/providers/FolderList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/i;->Sd:Lcom/android/mail/providers/FolderList;

    .line 70
    invoke-static {p1, p4, p5}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_5

    .line 73
    iget v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    iput v2, p0, Lcom/android/email/provider/i;->Sc:I

    .line 75
    iget-object v2, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    const-string v3, "cursor_total_count"

    iget v4, v1, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    iget v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    if-eq v2, v6, :cond_0

    iget v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    if-ne v2, v5, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    const-string v1, "cursor_status"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    if-nez v2, :cond_4

    .line 83
    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    if-nez v0, :cond_3

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    invoke-static {v0}, Lcom/android/emailcommon/provider/Mailbox;->bl(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    if-ne v0, v5, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v1, Lcom/android/emailcommon/provider/Mailbox;->Zt:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    const-string v1, "cursor_status"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    const-string v1, "cursor_status"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_4
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown mailbox sync status"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    iget-object v0, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    const-string v1, "cursor_status"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 105
    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/provider/i;->Sc:I

    .line 107
    iget-object v1, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    const-string v2, "cursor_total_count"

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_6
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget-object v0, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    const-string v1, "cursor_status"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private kb()Lcom/android/mail/providers/ConversationInfo;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    const-string v0, "numMessages"

    invoke-virtual {p0, v0}, Lcom/android/email/provider/i;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/i;->getInt(I)I

    move-result v0

    .line 173
    new-instance v4, Lcom/android/mail/providers/ConversationInfo;

    invoke-direct {v4, v0}, Lcom/android/mail/providers/ConversationInfo;-><init>(I)V

    .line 175
    const-string v0, "snippet"

    invoke-virtual {p0, v0}, Lcom/android/email/provider/i;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    .line 176
    iget-object v0, v4, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    .line 177
    iget-object v0, v4, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    .line 179
    const-string v0, "read"

    invoke-virtual {p0, v0}, Lcom/android/email/provider/i;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/i;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 180
    :goto_0
    const-string v3, "displayName"

    invoke-virtual {p0, v3}, Lcom/android/email/provider/i;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/provider/i;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    const-string v3, "fromList"

    invoke-virtual {p0, v3}, Lcom/android/email/provider/i;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/provider/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    if-eqz v3, :cond_3

    .line 186
    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 187
    array-length v7, v6

    if-lez v7, :cond_2

    .line 188
    aget-object v3, v6, v2

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 199
    :goto_1
    iget v6, p0, Lcom/android/email/provider/i;->Sc:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 201
    iput v1, v4, Lcom/android/mail/providers/ConversationInfo;->azN:I

    .line 221
    :cond_0
    :goto_2
    return-object v4

    :cond_1
    move v0, v2

    .line 179
    goto :goto_0

    .line 190
    :cond_2
    sget-object v6, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v7, "Couldn\'t parse sender email address"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 194
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 202
    :cond_4
    iget v1, p0, Lcom/android/email/provider/i;->Sc:I

    const/4 v6, 0x5

    if-eq v1, v6, :cond_5

    iget v1, p0, Lcom/android/email/provider/i;->Sc:I

    const/4 v6, 0x4

    if-ne v1, v6, :cond_6

    .line 205
    :cond_5
    const-string v1, "toList"

    invoke-virtual {p0, v1}, Lcom/android/email/provider/i;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/provider/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 208
    array-length v5, v3

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_0

    aget-object v6, v3, v1

    .line 209
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->li()Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 213
    new-instance v8, Lcom/android/mail/providers/ParticipantInfo;

    invoke-direct {v8, v7, v6, v2, v0}, Lcom/android/mail/providers/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v4, v8}, Lcom/android/mail/providers/ConversationInfo;->a(Lcom/android/mail/providers/ParticipantInfo;)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 217
    :cond_6
    new-instance v1, Lcom/android/mail/providers/ParticipantInfo;

    invoke-direct {v1, v5, v3, v2, v0}, Lcom/android/mail/providers/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v4, v1}, Lcom/android/mail/providers/ConversationInfo;->a(Lcom/android/mail/providers/ParticipantInfo;)V

    goto :goto_2
.end method


# virtual methods
.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/email/provider/i;->cV:Landroid/os/Bundle;

    return-object v0
.end method

.method public final kc()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 226
    iget-object v0, p0, Lcom/android/email/provider/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 228
    const-string v2, "flagSeen"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 229
    sget-object v2, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    .line 230
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/email/provider/i;->PJ:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "1"

    aput-object v4, v3, v8

    .line 233
    const-string v4, "mailboxKey = ? AND flagSeen != ?"

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public final kd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/email/provider/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    const-string v1, "uipurgefolder"

    iget-wide v2, p0, Lcom/android/email/provider/i;->PJ:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 121
    const-string v0, "setVisibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "setVisibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 125
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/email/provider/i;->kc()V

    .line 128
    const-string v0, "enteredFolder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/email/provider/i;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/provider/i;->PJ:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_0

    .line 136
    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/emailcommon/provider/Mailbox;->Zt:J

    sub-long/2addr v4, v6

    .line 139
    const-wide/32 v6, 0x493e0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/email/provider/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/email/provider/EmailProvider;->Sj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 143
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 151
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 153
    const-string v1, "setVisibility"

    const-string v2, "ok"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "rawFolders"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    const-string v1, "rawFolders"

    iget-object v2, p0, Lcom/android/email/provider/i;->Sd:Lcom/android/mail/providers/FolderList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 162
    :cond_1
    const-string v1, "conversationInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const-string v1, "conversationInfo"

    invoke-direct {p0}, Lcom/android/email/provider/i;->kb()Lcom/android/mail/providers/ConversationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    :cond_2
    return-object v0
.end method
