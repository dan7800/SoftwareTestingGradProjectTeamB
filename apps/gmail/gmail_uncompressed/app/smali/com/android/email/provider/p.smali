.class final Lcom/android/email/provider/p;
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
.field final synthetic PG:Landroid/content/Context;

.field final synthetic Tm:Lcom/android/email/provider/EmailProvider;

.field final synthetic To:J

.field final synthetic Tp:J


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;JJ)V
    .locals 1

    .prologue
    .line 5942
    iput-object p1, p0, Lcom/android/email/provider/p;->Tm:Lcom/android/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/android/email/provider/p;->PG:Landroid/content/Context;

    iput-wide p3, p0, Lcom/android/email/provider/p;->To:J

    iput-wide p5, p0, Lcom/android/email/provider/p;->Tp:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5945
    iget-object v0, p0, Lcom/android/email/provider/p;->PG:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/provider/p;->To:J

    invoke-static {v0, v2, v3}, Lcom/android/email/service/n;->i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;

    move-result-object v0

    .line 5947
    if-eqz v0, :cond_0

    .line 5949
    :try_start_0
    iget-wide v1, p0, Lcom/android/email/provider/p;->To:J

    iget-object v3, p0, Lcom/android/email/provider/p;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-static {v3}, Lcom/android/email/provider/EmailProvider;->c(Lcom/android/email/provider/EmailProvider;)Lcom/android/emailcommon/service/SearchParams;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/provider/p;->Tp:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/service/a;->a(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    .line 5953
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 5954
    const-string v2, "totalCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5955
    iget-object v2, p0, Lcom/android/email/provider/p;->Tm:Lcom/android/email/provider/EmailProvider;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/provider/p;->Tp:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5957
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->km()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmailProvider#runSearchQuery. TotalCount to UI: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5963
    :cond_0
    :goto_0
    return-object v7

    .line 5959
    :catch_0
    move-exception v0

    .line 5960
    const-string v1, "searchMessages"

    const-string v2, "RemoteException"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5942
    invoke-direct {p0}, Lcom/android/email/provider/p;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
