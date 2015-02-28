.class final Lcom/android/email/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic LM:Lcom/android/email/d;


# direct methods
.method constructor <init>(Lcom/android/email/d;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/email/g;->LM:Lcom/android/email/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 554
    iget-object v0, p0, Lcom/android/email/g;->LM:Lcom/android/email/d;

    invoke-static {v0}, Lcom/android/email/d;->a(Lcom/android/email/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->XT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 557
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 559
    iget-object v0, p0, Lcom/android/email/g;->LM:Lcom/android/email/d;

    invoke-static {v0}, Lcom/android/email/d;->c(Lcom/android/email/d;)Landroid/app/NotificationManager;

    move-result-object v0

    const-wide/32 v4, 0x30000000

    add-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 565
    return-void
.end method
