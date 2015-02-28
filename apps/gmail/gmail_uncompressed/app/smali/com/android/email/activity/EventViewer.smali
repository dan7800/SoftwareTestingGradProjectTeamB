.class public Lcom/android/email/activity/EventViewer;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/email/activity/EventViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 40
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/email/activity/EventViewer;->finish()V

    .line 82
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v8, Lcom/android/emailcommon/mail/i;

    iget-object v0, v0, Lcom/android/emailcommon/provider/g;->YY:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/android/emailcommon/mail/i;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v0, "UID"

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/i;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/android/email/activity/EventViewer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "sync_data2=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_3

    .line 54
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 59
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 63
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    .line 65
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 77
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    const/high16 v0, 0x80000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/email/activity/EventViewer;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/email/activity/EventViewer;->finish()V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 69
    :cond_1
    :try_start_1
    const-string v0, "DTSTART"

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/i;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->aF(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://com.android.calendar/time/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    const-string v1, "VIEW"

    const-string v3, "DAY"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 71
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/activity/EventViewer;->finish()V

    goto/16 :goto_0

    :cond_2
    move-wide v0, v6

    goto :goto_1

    :cond_3
    move-wide v0, v6

    goto :goto_2
.end method
