.class public final Lcom/android/mail/browse/ad;
.super Lcom/android/mail/browse/V;
.source "SourceFile"


# instance fields
.field private final aqX:Lcom/android/mail/browse/aa;

.field private final aqY:Lcom/android/mail/browse/ae;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/mail/browse/V;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/android/mail/browse/ad;->aqX:Lcom/android/mail/browse/aa;

    .line 406
    iput-object p2, p0, Lcom/android/mail/browse/ad;->aqY:Lcom/android/mail/browse/ae;

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;B)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/ad;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 416
    const v0, 0x7f040056

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageFooterView;

    .line 418
    iget-object v1, p0, Lcom/android/mail/browse/ad;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->k(Lcom/android/mail/browse/aa;)Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ad;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v2}, Lcom/android/mail/browse/aa;->l(Lcom/android/mail/browse/aa;)Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/ad;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v3}, Lcom/android/mail/browse/aa;->c(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/m;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/browse/ad;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v4}, Lcom/android/mail/browse/aa;->m(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/aE;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/browse/MessageFooterView;->a(Landroid/app/LoaderManager;Landroid/app/FragmentManager;Lcom/android/mail/browse/m;Lcom/android/mail/browse/aE;)V

    .line 420
    const-string v1, "overlay_item_root"

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageFooterView;->setTag(Ljava/lang/Object;)V

    .line 423
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    aput-object v0, v1, v5

    const/4 v2, 0x1

    const v3, 0x7f0d014d

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ad;->a([Landroid/view/View;)V

    .line 424
    return-object v0
.end method

.method public final getGravity()I
    .locals 1

    .prologue
    .line 453
    const/16 v0, 0x30

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/mail/browse/ad;->aqY:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/mail/browse/V;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x3

    return v0
.end method

.method public final i(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 429
    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/MessageFooterView;

    .line 430
    iget-object v1, p0, Lcom/android/mail/browse/ad;->aqY:Lcom/android/mail/browse/ae;

    invoke-virtual {v0, v1, p2}, Lcom/android/mail/browse/MessageFooterView;->a(Lcom/android/mail/browse/ae;Z)V

    .line 431
    iput-object p1, p0, Lcom/android/mail/browse/ad;->agR:Landroid/view/View;

    .line 432
    return-void
.end method

.method public final qn()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public final qo()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/mail/browse/ad;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->qo()Landroid/view/View$OnKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public final qp()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/mail/browse/ad;->aqY:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v0

    return v0
.end method
