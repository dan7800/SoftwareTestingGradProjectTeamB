.class final Lcom/android/mail/browse/G;
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
.field private final amN:I

.field final synthetic amO:Lcom/android/mail/browse/F;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/F;I)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 288
    iput p2, p0, Lcom/android/mail/browse/G;->amN:I

    .line 289
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/G;)I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/mail/browse/G;->amN:I

    return v0
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 294
    :try_start_0
    const-string v0, "backgroundCaching"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->getCount()I

    move-result v1

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-static {v0}, Lcom/android/mail/browse/F;->c(Lcom/android/mail/browse/F;)I

    move-result v2

    .line 305
    invoke-virtual {p0}, Lcom/android/mail/browse/G;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-static {v0}, Lcom/android/mail/browse/F;->d(Lcom/android/mail/browse/F;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/I;

    .line 310
    iget-object v3, v0, Lcom/android/mail/browse/I;->amQ:Lcom/android/mail/providers/Conversation;

    if-nez v3, :cond_0

    .line 313
    iget-object v3, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-virtual {v3, v2}, Lcom/android/mail/browse/F;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    new-instance v3, Lcom/android/mail/providers/Conversation;

    iget-object v4, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-direct {v3, v4}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    iput-object v3, v0, Lcom/android/mail/browse/I;->amQ:Lcom/android/mail/providers/Conversation;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mail/browse/F;->a(Lcom/android/mail/browse/F;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    throw v0

    .line 320
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/mail/browse/G;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-static {v0}, Lcom/android/mail/browse/F;->e(Lcom/android/mail/browse/F;)Lcom/android/mail/browse/G;

    const-string v0, "ConvCursor"

    const-string v1, "ConversationCursor caching complete pos=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/browse/G;->amO:Lcom/android/mail/browse/F;

    invoke-static {v4}, Lcom/android/mail/browse/F;->c(Lcom/android/mail/browse/F;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
