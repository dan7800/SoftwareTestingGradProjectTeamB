.class public final Lcom/android/ex/chips/e;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field private aaL:I

.field final synthetic acm:Lcom/android/ex/chips/a;

.field private final acs:Lcom/android/ex/chips/g;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/a;Lcom/android/ex/chips/g;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/android/ex/chips/e;->acs:Lcom/android/ex/chips/g;

    .line 350
    return-void
.end method

.method private declared-synchronized mx()I
    .locals 1

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/chips/e;->aaL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized bp(I)V
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/ex/chips/e;->aaL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 366
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 367
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 368
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-direct {p0}, Lcom/android/ex/chips/e;->mx()I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/chips/e;->acs:Lcom/android/ex/chips/g;

    iget-wide v6, v5, Lcom/android/ex/chips/g;->act:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_1

    .line 381
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    new-instance v3, Lcom/android/ex/chips/i;

    iget-object v4, p0, Lcom/android/ex/chips/e;->acs:Lcom/android/ex/chips/g;

    iget-wide v4, v4, Lcom/android/ex/chips/g;->act:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/ex/chips/i;-><init>(Landroid/database/Cursor;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 386
    :cond_1
    if-eqz v1, :cond_2

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 392
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 401
    :cond_3
    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 8

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-static {v0}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;)Lcom/android/ex/chips/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/d;->mw()V

    .line 415
    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    iget-object v0, v0, Lcom/android/ex/chips/a;->aci:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 418
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/i;

    .line 422
    iget-object v3, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    iget-object v1, p0, Lcom/android/ex/chips/e;->acs:Lcom/android/ex/chips/g;

    iget-wide v4, v1, Lcom/android/ex/chips/g;->act:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/i;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-static {v0}, Lcom/android/ex/chips/a;->b(Lcom/android/ex/chips/a;)I

    .line 428
    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-static {v0}, Lcom/android/ex/chips/a;->c(Lcom/android/ex/chips/a;)I

    move-result v0

    if-lez v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-static {v0}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;)Lcom/android/ex/chips/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/d;->mv()V

    .line 438
    :cond_2
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-static {v0}, Lcom/android/ex/chips/a;->c(Lcom/android/ex/chips/a;)I

    move-result v0

    if-nez v0, :cond_4

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-virtual {v0}, Lcom/android/ex/chips/a;->mp()V

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    iget-object v1, p0, Lcom/android/ex/chips/e;->acm:Lcom/android/ex/chips/a;

    invoke-virtual {v1}, Lcom/android/ex/chips/a;->mo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/a;->h(Ljava/util/List;)V

    .line 446
    return-void
.end method
