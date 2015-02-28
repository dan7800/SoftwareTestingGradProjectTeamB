.class final Lcom/google/android/gm/provider/l;
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


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/k;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/k;B)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/l;-><init>(Lcom/google/android/gm/provider/k;)V

    return-void
.end method


# virtual methods
.method public final synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 17

    .prologue
    .line 163
    check-cast p2, Landroid/database/Cursor;

    const-string v2, "attachment listener"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v2}, Lcom/google/android/gm/provider/k;->b(Lcom/google/android/gm/provider/k;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, -0x1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v9, v3

    :goto_1
    const/4 v3, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v3}, Lcom/google/android/gm/provider/k;->c(Lcom/google/android/gm/provider/k;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v4}, Lcom/google/android/gm/provider/k;->d(Lcom/google/android/gm/provider/k;)J

    move-result-wide v4

    invoke-static/range {v3 .. v8}, Lcom/google/android/gm/provider/GmailProvider;->b(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v15}, Lcom/android/mail/providers/F;->cg(Ljava/lang/String;)I

    move-result v5

    iget v3, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-ne v5, v3, :cond_2

    :cond_1
    iput-wide v10, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    if-eqz v9, :cond_5

    const/4 v3, 0x1

    :goto_2
    iput v3, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    iput v14, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->dY(I)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fo(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->aw(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setContentType(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ea(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    iget v3, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    invoke-static {v13}, Lcom/google/android/gm/provider/g;->dR(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->aw(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v3, v10, v6

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v3}, Lcom/google/android/gm/provider/k;->b(Lcom/google/android/gm/provider/k;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v9, :cond_0

    :cond_3
    invoke-static {}, Lcom/google/android/gm/provider/k;->km()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ASL attachment listener found %s for %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v8}, Lcom/google/android/gm/provider/k;->d(Lcom/google/android/gm/provider/k;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v3}, Lcom/google/android/gm/provider/k;->b(Lcom/google/android/gm/provider/k;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v2}, Lcom/google/android/gm/provider/k;->b(Lcom/google/android/gm/provider/k;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v2}, Lcom/google/android/gm/provider/k;->e(Lcom/google/android/gm/provider/k;)V

    :goto_3
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v2}, Lcom/google/android/gm/provider/k;->f(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/r;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v2}, Lcom/google/android/gm/provider/k;->f(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/r;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v3}, Lcom/google/android/gm/provider/k;->b(Lcom/google/android/gm/provider/k;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/r;->x(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/l;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v2}, Lcom/google/android/gm/provider/k;->f(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/r;->startLoading()V

    goto :goto_3
.end method
