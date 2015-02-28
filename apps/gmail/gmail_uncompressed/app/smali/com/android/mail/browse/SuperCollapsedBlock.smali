.class public Lcom/android/mail/browse/SuperCollapsedBlock;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LQ:I

.field private auA:Lcom/android/mail/browse/aY;

.field private auB:Landroid/widget/TextView;

.field private auC:Landroid/view/View;

.field private auz:Lcom/android/mail/browse/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->setActivated(Z)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/af;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auz:Lcom/android/mail/browse/af;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/aY;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auA:Lcom/android/mail/browse/aY;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/aY;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auA:Lcom/android/mail/browse/aY;

    .line 67
    return-void
.end method

.method public final a(Lcom/android/mail/browse/af;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auz:Lcom/android/mail/browse/af;

    .line 78
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auC:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p1}, Lcom/android/mail/browse/af;->getEnd()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/mail/browse/af;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->LQ:I

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->LQ:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auB:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auz:Lcom/android/mail/browse/af;

    invoke-virtual {v0}, Lcom/android/mail/browse/af;->qT()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0075

    :goto_0
    iget-object v2, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auB:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f11000e

    iget v2, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->LQ:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->LQ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    return-void

    .line 80
    :cond_0
    const v0, 0x7f0a0098

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auB:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auC:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11000f

    iget v2, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->LQ:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->LQ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lcom/android/mail/utils/al;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auA:Lcom/android/mail/browse/aY;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/browse/aX;

    invoke-direct {v1, p0}, Lcom/android/mail/browse/aX;-><init>(Lcom/android/mail/browse/SuperCollapsedBlock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f0d021a

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auB:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0d021b

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->auC:Landroid/view/View;

    .line 74
    return-void
.end method
