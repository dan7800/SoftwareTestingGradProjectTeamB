.class final Lcom/android/email/activity/setup/L;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final LN:J

.field private final Nt:Ljava/lang/String;

.field private final Nx:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 433
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/L;->Nx:Landroid/content/Loader$ForceLoadContentObserver;

    .line 434
    iput-object p2, p0, Lcom/android/email/activity/setup/L;->Nt:Ljava/lang/String;

    .line 435
    iput-wide p3, p0, Lcom/android/email/activity/setup/L;->LN:J

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;JB)V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/setup/L;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private hM()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 440
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 443
    iget-object v0, p0, Lcom/android/email/activity/setup/L;->Nt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/L;->Nt:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/setup/L;->Nx:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->a(Landroid/content/Context;Ljava/lang/String;Landroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    move-object v1, v0

    .line 448
    :goto_0
    if-nez v1, :cond_1

    move-object v0, v6

    .line 505
    :goto_1
    return-object v0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/activity/setup/L;->LN:J

    iget-object v1, p0, Lcom/android/email/activity/setup/L;->Nx:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-static {v0, v4, v5, v1}, Lcom/android/emailcommon/provider/Account;->a(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 452
    :cond_1
    const-string v0, "account"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    .line 457
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    .line 459
    iget-object v0, v1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_2

    move-object v0, v6

    .line 460
    goto :goto_1

    .line 463
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Account;->XJ:J

    iget-object v2, p0, Lcom/android/email/activity/setup/L;->Nx:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-static {v0, v4, v5, v2}, Lcom/android/emailcommon/provider/Policy;->b(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    .line 466
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "uiaccount"

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_3

    .line 472
    const-string v1, "uiAccountCursor"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Lcom/android/email/activity/setup/L;->Nx:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 478
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v6

    .line 479
    goto :goto_1

    :cond_3
    move-object v0, v6

    .line 475
    goto :goto_1

    .line 482
    :cond_4
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v0}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v1

    .line 485
    const-string v0, "uiAccount"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 494
    new-instance v0, Lcom/android/mail/providers/Folder;

    invoke-direct {v0, v1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    if-eqz v1, :cond_5

    .line 500
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_5
    const-string v1, "inbox"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 505
    goto/16 :goto_1

    .line 499
    :cond_6
    if-eqz v1, :cond_7

    .line 500
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    goto/16 :goto_1

    .line 499
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    .line 500
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method


# virtual methods
.method protected final synthetic O(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 421
    check-cast p1, Ljava/util/Map;

    const-string v0, "account"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/Policy;->ae(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/L;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->ae(Landroid/content/Context;)V

    :cond_1
    const-string v0, "uiAccountCursor"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/email/activity/setup/L;->hM()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
