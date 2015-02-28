.class final Lcom/android/ex/chips/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic acP:Landroid/net/Uri;

.field final synthetic acQ:Lcom/android/ex/chips/ae;

.field final synthetic acR:Lcom/android/ex/chips/r;

.field final synthetic acS:Lcom/android/ex/chips/j;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/j;Landroid/net/Uri;Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/ex/chips/k;->acS:Lcom/android/ex/chips/j;

    iput-object p2, p0, Lcom/android/ex/chips/k;->acP:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/ex/chips/k;->acQ:Lcom/android/ex/chips/ae;

    iput-object p4, p0, Lcom/android/ex/chips/k;->acR:Lcom/android/ex/chips/r;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs my()[B
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/ex/chips/k;->acS:Lcom/android/ex/chips/j;

    invoke-static {v0}, Lcom/android/ex/chips/j;->a(Lcom/android/ex/chips/j;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/k;->acP:Landroid/net/Uri;

    sget-object v2, Lcom/android/ex/chips/l;->Lm:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_2

    .line 96
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 108
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/chips/k;->acS:Lcom/android/ex/chips/j;

    invoke-static {v0}, Lcom/android/ex/chips/j;->a(Lcom/android/ex/chips/j;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/k;->acP:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 112
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :goto_1
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 116
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 119
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 121
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/ex/chips/k;->my()[B

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    check-cast p1, [B

    iget-object v0, p0, Lcom/android/ex/chips/k;->acQ:Lcom/android/ex/chips/ae;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/ae;->b([B)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/k;->acS:Lcom/android/ex/chips/j;

    invoke-static {v0}, Lcom/android/ex/chips/j;->b(Lcom/android/ex/chips/j;)Landroid/support/v4/f/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/k;->acP:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/f/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/ex/chips/k;->acR:Lcom/android/ex/chips/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/k;->acR:Lcom/android/ex/chips/r;

    invoke-interface {v0}, Lcom/android/ex/chips/r;->mt()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/k;->acR:Lcom/android/ex/chips/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/k;->acR:Lcom/android/ex/chips/r;

    invoke-interface {v0}, Lcom/android/ex/chips/r;->mu()V

    goto :goto_0
.end method
