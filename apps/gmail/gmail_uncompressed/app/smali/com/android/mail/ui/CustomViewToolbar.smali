.class public Lcom/android/mail/ui/CustomViewToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/dE;
.implements Lcom/android/mail/ui/dy;


# instance fields
.field private aDb:Lcom/android/mail/ui/dD;

.field protected aIS:Landroid/widget/TextView;

.field protected aIT:Landroid/view/View;

.field private aob:Lcom/android/mail/ui/as;

.field private aqm:Lcom/android/mail/ui/ac;

.field private atL:Lcom/android/mail/providers/d;

.field protected vl:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/android/mail/ui/bo;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bo;-><init>(Lcom/android/mail/ui/CustomViewToolbar;)V

    iput-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->atL:Lcom/android/mail/providers/d;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/mail/ui/bo;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bo;-><init>(Lcom/android/mail/ui/CustomViewToolbar;)V

    iput-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->atL:Lcom/android/mail/providers/d;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/CustomViewToolbar;)Lcom/android/mail/ui/dD;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aDb:Lcom/android/mail/ui/dD;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/CustomViewToolbar;Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/mail/ui/CustomViewToolbar;->r(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method static synthetic b(Lcom/android/mail/ui/CustomViewToolbar;)Lcom/android/mail/ui/ac;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method private r(Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->xs()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->ug()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private ze()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/O;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/CustomViewToolbar;->r(Lcom/android/mail/providers/Account;)V

    .line 102
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/as;Lcom/android/mail/ui/ac;Lcom/android/mail/ui/dD;)V
    .locals 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/mail/ui/CustomViewToolbar;->aob:Lcom/android/mail/ui/as;

    .line 67
    iput-object p2, p0, Lcom/android/mail/ui/CustomViewToolbar;->aqm:Lcom/android/mail/ui/ac;

    .line 68
    iput-object p3, p0, Lcom/android/mail/ui/CustomViewToolbar;->aDb:Lcom/android/mail/ui/dD;

    .line 69
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dD;->a(Lcom/android/mail/ui/dE;)V

    .line 71
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->atL:Lcom/android/mail/providers/d;

    iget-object v1, p0, Lcom/android/mail/ui/CustomViewToolbar;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    .line 72
    return-void
.end method

.method public final cI(I)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mail/ui/CustomViewToolbar;->ze()V

    .line 115
    return-void
.end method

.method public final j(IZ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    .line 119
    if-eqz p2, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/bq;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/bq;-><init>(Lcom/android/mail/ui/CustomViewToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/ui/CustomViewToolbar;->ze()V

    .line 133
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 140
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 141
    iget-object v1, p0, Lcom/android/mail/ui/CustomViewToolbar;->vl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 143
    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/mail/ui/CustomViewToolbar;->vl:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 150
    :goto_1
    iget-object v1, p0, Lcom/android/mail/ui/CustomViewToolbar;->vl:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/mail/ui/CustomViewToolbar;->vl:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 152
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->vl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 146
    :cond_3
    aget v0, v0, v2

    sub-int v0, p1, v0

    goto :goto_1
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 95
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onFinishInflate()V

    .line 78
    const v0, 0x7f0d01cc

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/CustomViewToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->vl:Landroid/view/View;

    .line 79
    const v0, 0x7f0d01cd

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/CustomViewToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIS:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0d01ce

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/CustomViewToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    new-instance v1, Lcom/android/mail/ui/bp;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/bp;-><init>(Lcom/android/mail/ui/CustomViewToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIS:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public final setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/CustomViewToolbar;->aIS:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 174
    return-void
.end method
