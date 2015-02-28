.class final Lcom/android/email/provider/s;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private final Tq:I

.field private final Tr:I

.field private final Ts:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 4291
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 4292
    const-string v0, "contentUri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/s;->Tq:I

    .line 4293
    const-string v0, "uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/s;->Tr:I

    .line 4294
    iput-object p1, p0, Lcom/android/email/provider/s;->mContext:Landroid/content/Context;

    .line 4295
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/provider/s;->Ts:[Ljava/lang/String;

    .line 4296
    iget v0, p0, Lcom/android/email/provider/s;->Tq:I

    if-ne v0, v7, :cond_0

    .line 4343
    :goto_0
    return-void

    .line 4300
    :cond_0
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4301
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 4302
    iget v0, p0, Lcom/android/email/provider/s;->Tr:I

    invoke-virtual {p0, v0}, Lcom/android/email/provider/s;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4303
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4304
    iget-object v0, p0, Lcom/android/email/provider/s;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 4306
    if-nez v3, :cond_1

    .line 4307
    iget-object v0, p0, Lcom/android/email/provider/s;->Ts:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    goto :goto_1

    .line 4311
    :cond_1
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4312
    iget-object v0, p0, Lcom/android/email/provider/s;->Ts:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lK()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1

    .line 4320
    :cond_2
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yv:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    const-string v1, "application/vnd.android.package-archive"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4323
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v0

    .line 4339
    :goto_2
    iget-object v1, p0, Lcom/android/email/provider/s;->Ts:[Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_1

    .line 4325
    :cond_3
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v1

    .line 4327
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4328
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 4332
    :goto_3
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yj:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 4333
    goto :goto_2

    .line 4330
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 4335
    :cond_5
    iget-wide v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/emailcommon/b/a;->c(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4342
    :cond_6
    invoke-interface {p2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4347
    iget v0, p0, Lcom/android/email/provider/s;->Tq:I

    if-ne p1, v0, :cond_0

    .line 4348
    iget-object v0, p0, Lcom/android/email/provider/s;->Ts:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/provider/s;->getPosition()I

    move-result v1

    aget-object v0, v0, v1

    .line 4350
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
