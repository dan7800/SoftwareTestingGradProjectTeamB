.class final Lcom/google/android/gm/P;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aYj:Lcom/google/android/gm/K;

.field private aYn:Lcom/google/android/gm/provider/U;

.field private aYo:Lcom/google/android/gm/al;

.field private final aqR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/O;",
            ">;"
        }
    .end annotation
.end field

.field private final yF:Landroid/database/DataSetObserver;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/K;)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    .line 356
    new-instance v0, Lcom/google/android/gm/Q;

    invoke-direct {v0, p0}, Lcom/google/android/gm/Q;-><init>(Lcom/google/android/gm/P;)V

    iput-object v0, p0, Lcom/google/android/gm/P;->yF:Landroid/database/DataSetObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/K;B)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/google/android/gm/P;-><init>(Lcom/google/android/gm/K;)V

    return-void
.end method

.method private CU()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    invoke-virtual {v0}, Lcom/google/android/gm/al;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CV()V
    .locals 5

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/U;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v2

    .line 415
    invoke-direct {p0, v2}, Lcom/google/android/gm/P;->a(Lcom/google/android/gm/provider/T;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/P;->CU()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->EU()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    new-instance v4, Lcom/google/android/gm/O;

    invoke-direct {v4, v0}, Lcom/google/android/gm/O;-><init>(Lcom/google/android/gm/provider/T;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    invoke-virtual {v0}, Lcom/google/android/gm/al;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    invoke-virtual {v4, v0}, Lcom/google/android/gm/provider/U;->eB(Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gm/P;->a(Lcom/google/android/gm/provider/T;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->a(Lcom/google/android/gm/K;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ah;->aW(Landroid/content/Context;)Lcom/google/android/gm/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ah;->Db()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v0, 0x7f09038f

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/P;->a(ILjava/util/List;)V

    const v0, 0x7f090390

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/P;->a(ILjava/util/List;)V

    .line 427
    :cond_6
    return-void

    .line 423
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    .line 424
    iget-object v2, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    new-instance v3, Lcom/google/android/gm/O;

    invoke-direct {v3, v0}, Lcom/google/android/gm/O;-><init>(Lcom/google/android/gm/provider/T;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gm/P;)Lcom/google/android/gm/provider/U;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    return-object v0
.end method

.method private a(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/T;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    new-instance v1, Lcom/google/android/gm/O;

    iget-object v2, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v2}, Lcom/google/android/gm/K;->a(Lcom/google/android/gm/K;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gm/O;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    .line 464
    iget-object v2, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    new-instance v3, Lcom/google/android/gm/O;

    invoke-direct {v3, v0}, Lcom/google/android/gm/O;-><init>(Lcom/google/android/gm/provider/T;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/gm/provider/T;)Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-virtual {v0}, Lcom/google/android/gm/K;->CP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/T;->Fb()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/T;->Fa()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gm/P;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/android/gm/P;->CV()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/al;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    iget-object v1, p0, Lcom/google/android/gm/P;->yF:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/al;->b(Landroid/database/DataSetObserver;)V

    .line 380
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    .line 381
    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    iget-object v1, p0, Lcom/google/android/gm/P;->yF:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/al;->a(Landroid/database/DataSetObserver;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/google/android/gm/P;->CV()V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/gm/P;->notifyDataSetChanged()V

    .line 386
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/U;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    iget-object v1, p0, Lcom/google/android/gm/P;->yF:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/U;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 370
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    .line 371
    iget-object v0, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    iget-object v1, p0, Lcom/google/android/gm/P;->yF:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/U;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 372
    invoke-direct {p0}, Lcom/google/android/gm/P;->CV()V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gm/P;->notifyDataSetChanged()V

    .line 374
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 605
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 610
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 568
    const/4 v0, 0x2

    .line 572
    :goto_0
    return v0

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/O;

    invoke-virtual {v0}, Lcom/google/android/gm/O;->CS()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v3, 0x7f0d01af

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 470
    invoke-virtual {p0, p1}, Lcom/google/android/gm/P;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/O;

    .line 472
    iget-object v1, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v1}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 474
    if-nez p2, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-virtual {v0}, Lcom/google/android/gm/K;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bc

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 477
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 479
    const v0, 0x1020010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 481
    if-eqz v1, :cond_1

    const v1, 0x7f090394

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 485
    new-instance v1, Lcom/google/android/gm/R;

    invoke-direct {v1, p0}, Lcom/google/android/gm/R;-><init>(Lcom/google/android/gm/P;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-virtual {v0}, Lcom/google/android/gm/K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 494
    invoke-virtual {p2, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 515
    :cond_0
    :goto_1
    return-object p2

    .line 481
    :cond_1
    const v1, 0x7f090393

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gm/O;->CT()Z

    move-result v1

    if-nez v1, :cond_6

    .line 501
    iget-object v1, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v1}, Lcom/google/android/gm/K;->d(Lcom/google/android/gm/K;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gm/O;->aYm:Lcom/google/android/gm/provider/T;

    if-nez p2, :cond_4

    const v0, 0x7f040088

    invoke-virtual {v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/google/android/gm/T;

    invoke-direct {v1, v4}, Lcom/google/android/gm/T;-><init>(B)V

    const v0, 0x7f0d00d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/T;->aYq:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/T;->aYr:Landroid/widget/TextView;

    const v0, 0x7f0d01c0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/T;->aYs:Landroid/widget/TextView;

    const v0, 0x7f0d01bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/T;->aYt:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    iget-object v1, v0, Lcom/google/android/gm/T;->aYr:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/T;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-virtual {v1}, Lcom/google/android/gm/K;->CP()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gm/T;->aYs:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/google/android/gm/T;->aYs:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gm/K;->a(Lcom/google/android/gm/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/google/android/gm/T;->aYq:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v1}, Lcom/google/android/gm/K;->a(Lcom/google/android/gm/K;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gm/ay;->b(Lcom/google/android/gm/provider/T;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/mail/utils/ag;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gm/T;->aYq:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/google/android/gm/provider/T;->getBackgroundColor()I

    move-result v1

    invoke-static {}, Lcom/google/android/gm/c/f;->IC()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v0, v0, Lcom/google/android/gm/T;->aYt:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/T;

    goto :goto_2

    :cond_5
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v0, Lcom/google/android/gm/T;->aYt:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 505
    :cond_6
    if-nez p2, :cond_7

    .line 506
    iget-object v1, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v1}, Lcom/google/android/gm/K;->d(Lcom/google/android/gm/K;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008a

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 508
    new-instance v2, Lcom/google/android/gm/T;

    invoke-direct {v2, v4}, Lcom/google/android/gm/T;-><init>(B)V

    .line 509
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/google/android/gm/T;->aYr:Landroid/widget/TextView;

    .line 510
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 514
    :goto_3
    iget-object v1, v1, Lcom/google/android/gm/T;->aYr:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/gm/O;->aYl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 512
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/T;

    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 584
    invoke-direct {p0}, Lcom/google/android/gm/P;->CU()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    .line 588
    goto :goto_0

    .line 591
    :cond_2
    iget-object v3, p0, Lcom/google/android/gm/P;->aqR:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->b(Lcom/google/android/gm/K;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    sub-int v0, p1, v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/O;

    invoke-virtual {v0}, Lcom/google/android/gm/O;->CT()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final stopListening()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/gm/P;->aYn:Lcom/google/android/gm/provider/U;

    iget-object v1, p0, Lcom/google/android/gm/P;->yF:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/U;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/google/android/gm/P;->aYo:Lcom/google/android/gm/al;

    iget-object v1, p0, Lcom/google/android/gm/P;->yF:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/al;->b(Landroid/database/DataSetObserver;)V

    .line 395
    :cond_1
    return-void
.end method
