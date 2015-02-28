.class final Lcom/android/mail/widget/c;
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
.field private final aQZ:[I

.field final synthetic aRa:Lcom/android/mail/widget/b;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/mail/widget/b;Landroid/content/Context;[I)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/mail/widget/c;->aRa:Lcom/android/mail/widget/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/android/mail/widget/c;->mContext:Landroid/content/Context;

    .line 206
    iput-object p3, p0, Lcom/android/mail/widget/c;->aQZ:[I

    .line 207
    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 12

    .prologue
    .line 211
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    iget-object v0, p0, Lcom/android/mail/widget/c;->aQZ:[I

    array-length v0, v0

    if-ge v11, v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/android/mail/widget/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/widget/c;->aQZ:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/android/mail/i/g;->ct(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    const/4 v2, 0x0

    .line 216
    const/4 v0, 0x0

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 218
    const-string v0, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 221
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 222
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    :goto_1
    const/4 v2, 0x0

    .line 234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 235
    iget-object v2, p0, Lcom/android/mail/widget/c;->aRa:Lcom/android/mail/widget/b;

    iget-object v3, p0, Lcom/android/mail/widget/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/mail/widget/b;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v1

    move-object v8, v1

    .line 237
    :goto_2
    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v8, :cond_8

    .line 238
    iget-object v0, v8, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    move-object v1, v0

    .line 241
    :goto_3
    const/4 v6, 0x0

    .line 243
    if-eqz v1, :cond_7

    .line 244
    iget-object v0, p0, Lcom/android/mail/widget/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_7

    .line 250
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    new-instance v0, Lcom/android/mail/providers/Folder;

    invoke-direct {v0, v2}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 259
    :goto_5
    iget-object v2, p0, Lcom/android/mail/widget/c;->aRa:Lcom/android/mail/widget/b;

    iget-object v3, p0, Lcom/android/mail/widget/c;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mail/widget/c;->aQZ:[I

    aget v4, v4, v11

    if-nez v0, :cond_1

    const/4 v6, 0x1

    :goto_6
    if-nez v0, :cond_2

    const/4 v7, 0x0

    :goto_7
    if-nez v0, :cond_3

    const/4 v9, 0x0

    :goto_8
    if-nez v0, :cond_4

    const/4 v10, 0x0

    :goto_9
    move-object v5, v8

    move-object v8, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/mail/widget/b;->b(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 211
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto/16 :goto_0

    .line 225
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 259
    :cond_1
    iget v6, v0, Lcom/android/mail/providers/Folder;->type:I

    goto :goto_6

    :cond_2
    iget v7, v0, Lcom/android/mail/providers/Folder;->ayg:I

    goto :goto_7

    :cond_3
    iget-object v9, v0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    goto :goto_8

    :cond_4
    iget-object v10, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    goto :goto_9

    .line 267
    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    move-object v0, v6

    goto :goto_4

    :cond_7
    move-object v0, v6

    goto :goto_5

    :cond_8
    move-object v1, v0

    goto :goto_3

    :cond_9
    move-object v8, v2

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/mail/widget/c;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
