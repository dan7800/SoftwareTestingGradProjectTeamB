.class final Lcom/google/android/gm/provider/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bdd:Lcom/google/android/gm/provider/k;

.field private final bdi:Landroid/os/Handler;

.field private final bdj:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/k;)V
    .locals 2

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/gm/provider/o;->bdd:Lcom/google/android/gm/provider/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/o;->bdi:Landroid/os/Handler;

    .line 261
    new-instance v0, Lcom/google/android/gm/provider/p;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/p;-><init>(Lcom/google/android/gm/provider/o;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/o;->bdj:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/k;B)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/o;-><init>(Lcom/google/android/gm/provider/k;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/o;Ljava/util/List;Ljava/util/Map;)V
    .locals 10

    .prologue
    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/n;

    iget-wide v2, v0, Lcom/google/android/gm/provider/n;->bde:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/google/android/gm/provider/n;->bde:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-static {}, Lcom/google/android/gm/provider/k;->km()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASL download status changed for %s: %d, %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v0, Lcom/google/android/gm/provider/n;->bdf:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v0, Lcom/google/android/gm/provider/n;->bdg:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-wide v2, v0, Lcom/google/android/gm/provider/n;->bdf:J

    long-to-int v2, v2

    iput v2, v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayO:I

    iget v2, v0, Lcom/google/android/gm/provider/n;->bdg:I

    iput v2, v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    iget v3, v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    iget v2, v0, Lcom/google/android/gm/provider/n;->bdh:I

    iget v5, v0, Lcom/google/android/gm/provider/n;->bdg:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    iget v5, v0, Lcom/google/android/gm/provider/n;->bdg:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    :cond_1
    iget v5, v0, Lcom/google/android/gm/provider/n;->bdg:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayO:I

    iget v1, v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    if-eq v5, v1, :cond_5

    const/16 v2, 0x10

    const/16 v1, 0x3e8

    invoke-static {}, Lcom/google/android/gm/provider/k;->km()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Attachment downloaded size does not match size."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/provider/o;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v3}, Lcom/google/android/gm/provider/k;->a(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/g;

    move-result-object v3

    iget-wide v6, v0, Lcom/google/android/gm/provider/n;->bde:J

    invoke-virtual {v3, v6, v7, v2, v1}, Lcom/google/android/gm/provider/g;->a(JII)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gm/provider/k;->km()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadListener: no rows found in cursor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/provider/o;->bdi:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/provider/o;->bdj:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gm/provider/k;->km()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadListener: attachment downloaded size never above 0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_5
    move v1, v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public final synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 13

    .prologue
    .line 258
    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_1

    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "bytes_so_far"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v0, "reason"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const/4 v0, -0x1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v1, Lcom/google/android/gm/provider/n;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/n;-><init>(JJII)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/o;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v0}, Lcom/google/android/gm/provider/k;->b(Lcom/google/android/gm/provider/k;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->r(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/o;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v1}, Lcom/google/android/gm/provider/k;->g(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/provider/q;

    invoke-direct {v2, p0, v12, v0}, Lcom/google/android/gm/provider/q;-><init>(Lcom/google/android/gm/provider/o;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/MailEngine;->g(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
