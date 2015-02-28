.class final Lcom/android/mail/ui/bc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final Hb:Landroid/content/ContentResolver;

.field private final aIq:Ljava/lang/String;

.field private final aIr:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 1741
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1742
    iput-object p1, p0, Lcom/android/mail/ui/bc;->mContext:Landroid/content/Context;

    .line 1743
    iput-object p2, p0, Lcom/android/mail/ui/bc;->aIq:Ljava/lang/String;

    .line 1744
    iput-object p3, p0, Lcom/android/mail/ui/bc;->aIr:Landroid/net/Uri;

    .line 1745
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bc;->Hb:Landroid/content/ContentResolver;

    .line 1746
    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1751
    iget-object v0, p0, Lcom/android/mail/ui/bc;->Hb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mail/ui/bc;->aIr:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/providers/E;->aCu:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1753
    if-nez v1, :cond_0

    .line 1777
    :goto_0
    return-object v3

    .line 1758
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    const-string v0, "cookie"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1762
    if-eqz v0, :cond_1

    .line 1763
    iget-object v2, p0, Lcom/android/mail/ui/bc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 1765
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    .line 1766
    invoke-virtual {v4}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1767
    iget-object v5, p0, Lcom/android/mail/ui/bc;->aIq:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1735
    invoke-direct {p0}, Lcom/android/mail/ui/bc;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
