.class public Lcom/android/email/provider/w;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/provider/y;


# instance fields
.field private LN:J

.field private TA:Z

.field private TB:Landroid/app/ProgressDialog;

.field private Tx:I

.field private Ty:Lcom/android/email/provider/x;

.field private Tz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/provider/w;->TA:Z

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/android/email/provider/w;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/email/provider/w;->LN:J

    return-wide v0
.end method

.method static synthetic b(Lcom/android/email/provider/w;)Lcom/android/email/provider/x;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/provider/w;->Ty:Lcom/android/email/provider/x;

    return-object v0
.end method

.method private b(Landroid/net/Uri;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 175
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/email/provider/w;->Tz:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/android/email/provider/w;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 176
    new-instance v0, Lcom/android/email/provider/z;

    iget-boolean v2, p0, Lcom/android/email/provider/w;->TA:Z

    if-nez v2, :cond_0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/provider/z;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/email/provider/y;Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {v0}, Lcom/android/email/provider/z;->show()V

    .line 179
    return-void

    :cond_0
    move v5, v1

    .line 176
    goto :goto_0
.end method

.method static synthetic c(Lcom/android/email/provider/w;)Lcom/android/email/provider/x;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/provider/w;->Ty:Lcom/android/email/provider/x;

    return-object v0
.end method

.method static synthetic d(Lcom/android/email/provider/w;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/android/email/provider/w;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/android/email/provider/w;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/email/provider/w;->kp()V

    return-void
.end method

.method private kp()V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/uifullfolders/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/provider/w;->LN:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    const v1, 0x7f0902d4

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/w;->b(Landroid/net/Uri;I)V

    .line 172
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Folder;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 183
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 188
    iget-wide v2, p0, Lcom/android/email/provider/w;->LN:J

    iget v4, p0, Lcom/android/email/provider/w;->Tx:I

    invoke-static {p0, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    .line 190
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/email/provider/w;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    const-string v2, "type"

    iget v3, p0, Lcom/android/email/provider/w;->Tx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/email/provider/w;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 205
    iget-wide v2, p0, Lcom/android/email/provider/w;->LN:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 206
    const-string v2, "flags"

    iget v3, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/email/provider/w;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/w;->finish()V

    .line 212
    return-void
.end method

.method public final cancel()V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/email/provider/w;->finish()V

    .line 217
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/email/provider/w;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    const-string v4, "account"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    const-string v0, "FolderPickerActivity"

    const-string v1, "No account # in Uri?"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/email/provider/w;->finish()V

    .line 111
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/provider/w;->LN:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const-string v0, "mailbox_type"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/provider/w;->TA:Z

    .line 75
    const-string v0, "mailbox_type"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/w;->Tx:I

    .line 76
    iget-wide v4, p0, Lcom/android/email/provider/w;->LN:J

    invoke-static {p0, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v4

    .line 78
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/email/provider/w;->TA:Z

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "FolderPickerActivity"

    const-string v1, "Trash folder already exists"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/email/provider/w;->finish()V

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    const-string v0, "FolderPickerActivity"

    const-string v1, "Invalid account # in Uri?"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/email/provider/w;->finish()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 74
    goto :goto_1

    .line 83
    :cond_2
    iget-wide v4, p0, Lcom/android/email/provider/w;->LN:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    const-string v0, "FolderPickerActivity"

    const-string v1, "No account?"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/email/provider/w;->finish()V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/email/provider/w;->Tz:Ljava/lang/String;

    .line 90
    iget v0, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_4

    .line 92
    invoke-direct {p0}, Lcom/android/email/provider/w;->kp()V

    goto :goto_0

    .line 95
    :cond_4
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    const v1, 0x7f0902d6

    invoke-virtual {p0, v1}, Lcom/android/email/provider/w;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/android/email/provider/x;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, p0, v1}, Lcom/android/email/provider/x;-><init>(Lcom/android/email/provider/w;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/provider/w;->Ty:Lcom/android/email/provider/x;

    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/provider/w;->LN:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/provider/w;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/w;->Ty:Lcom/android/email/provider/x;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 100
    :cond_5
    const-string v0, "picker_ui_account"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 101
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/w;->Tz:Ljava/lang/String;

    .line 102
    iget-object v1, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/provider/w;->LN:J

    .line 103
    const-string v1, "picker_mailbox_type"

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/w;->Tx:I

    .line 104
    const-string v1, "picker_header_id"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 105
    if-nez v1, :cond_6

    .line 106
    invoke-virtual {p0}, Lcom/android/email/provider/w;->finish()V

    goto/16 :goto_0

    .line 109
    :cond_6
    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/w;->b(Landroid/net/Uri;I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/android/email/provider/w;->Ty:Lcom/android/email/provider/x;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/email/provider/w;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/w;->Ty:Lcom/android/email/provider/x;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 119
    iput-object v2, p0, Lcom/android/email/provider/w;->Ty:Lcom/android/email/provider/x;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 123
    iput-object v2, p0, Lcom/android/email/provider/w;->TB:Landroid/app/ProgressDialog;

    .line 125
    :cond_1
    return-void
.end method
