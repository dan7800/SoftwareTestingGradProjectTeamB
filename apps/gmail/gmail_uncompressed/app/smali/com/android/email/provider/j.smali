.class public final Lcom/android/email/provider/j;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private final Se:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Sf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Sg:I

.field private final Sh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 57
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 58
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/j;->Sh:I

    .line 59
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/j;->Sg:I

    .line 60
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 61
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/email/provider/j;->Sf:Landroid/util/SparseArray;

    .line 62
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/email/provider/j;->Se:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 68
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 70
    :try_start_0
    iget v0, p0, Lcom/android/email/provider/j;->Sh:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 71
    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/e;->F(J)Landroid/net/Uri;

    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 75
    :try_start_1
    invoke-static {v0}, Lorg/apache/a/a/a;->i(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 77
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-static {v3}, Lcom/android/mail/utils/t;->cv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lcom/android/email/provider/j;->Sf:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    :cond_1
    :goto_1
    :try_start_3
    iget v0, p0, Lcom/android/email/provider/j;->Sg:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 87
    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/e;->E(J)Landroid/net/Uri;

    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 91
    :try_start_4
    invoke-static {v0}, Lorg/apache/a/a/a;->i(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 93
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 95
    iget-object v0, p0, Lcom/android/email/provider/j;->Se:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Did not find text body for message %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v2, v0, v3, v6}, Lcom/android/mail/utils/E;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v6, "Did not find html body for message %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v0, v6, v7}, Lcom/android/mail/utils/E;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 93
    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 101
    :cond_2
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 102
    return-void
.end method


# virtual methods
.method public final getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/email/provider/j;->Sh:I

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/email/provider/j;->Sf:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/email/provider/j;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget v0, p0, Lcom/android/email/provider/j;->Sg:I

    if-ne p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/email/provider/j;->Se:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/email/provider/j;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getType(I)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/email/provider/j;->Sh:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/email/provider/j;->Sg:I

    if-ne p1, v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x3

    .line 121
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getType(I)I

    move-result v0

    goto :goto_0
.end method
