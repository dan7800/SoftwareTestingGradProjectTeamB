.class public final Lcom/android/mail/browse/af;
.super Lcom/android/mail/browse/V;
.source "SourceFile"


# instance fields
.field private final As:I

.field final synthetic aqW:Lcom/android/mail/browse/aa;

.field private final ari:Z

.field private final hb:I


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/aa;IIZ)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/mail/browse/af;->aqW:Lcom/android/mail/browse/aa;

    invoke-direct {p0}, Lcom/android/mail/browse/V;-><init>()V

    .line 478
    iput p2, p0, Lcom/android/mail/browse/af;->As:I

    .line 479
    iput p3, p0, Lcom/android/mail/browse/af;->hb:I

    .line 480
    iput-boolean p4, p0, Lcom/android/mail/browse/af;->ari:Z

    .line 481
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/aa;IIZB)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mail/browse/af;-><init>(Lcom/android/mail/browse/aa;IIZ)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    const v0, 0x7f0400b6

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/SuperCollapsedBlock;

    .line 492
    iget-object v1, p0, Lcom/android/mail/browse/af;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->n(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/aY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/SuperCollapsedBlock;->a(Lcom/android/mail/browse/aY;)V

    .line 493
    iget-object v1, p0, Lcom/android/mail/browse/af;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->e(Lcom/android/mail/browse/aa;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/SuperCollapsedBlock;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 494
    const-string v1, "overlay_item_root"

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/SuperCollapsedBlock;->setTag(Ljava/lang/Object;)V

    .line 497
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/af;->a([Landroid/view/View;)V

    .line 498
    return-object v0
.end method

.method public final getEnd()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/android/mail/browse/af;->hb:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/mail/browse/af;->As:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x4

    return v0
.end method

.method public final i(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 503
    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/SuperCollapsedBlock;

    .line 504
    invoke-virtual {v0, p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->a(Lcom/android/mail/browse/af;)V

    .line 505
    iput-object p1, p0, Lcom/android/mail/browse/af;->agR:Landroid/view/View;

    .line 506
    return-void
.end method

.method public final qT()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/android/mail/browse/af;->ari:Z

    return v0
.end method

.method public final qn()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public final qo()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/mail/browse/af;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v0}, Lcom/android/mail/browse/aa;->e(Lcom/android/mail/browse/aa;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public final qp()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public final qu()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    return v0
.end method
