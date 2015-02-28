.class public final Landroid/support/v7/internal/widget/D;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/p;


# static fields
.field private static final yk:Landroid/view/animation/Interpolator;


# instance fields
.field private AA:Z

.field AB:I

.field AC:I

.field private AD:I

.field protected final AE:Landroid/support/v7/internal/widget/H;

.field Ax:Ljava/lang/Runnable;

.field private Ay:Landroid/support/v7/widget/LinearLayoutCompat;

.field private Az:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private yr:I

.field protected ys:Landroid/support/v4/view/aV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/D;->yk:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/support/v7/internal/widget/H;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/H;-><init>(Landroid/support/v7/internal/widget/D;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/D;->AE:Landroid/support/v7/internal/widget/H;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->setHorizontalScrollBarEnabled(Z)V

    .line 83
    invoke-static {p1}, Landroid/support/v7/internal/view/a;->f(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dl()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/D;->af(I)V

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dn()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/D;->AC:I

    .line 87
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/a/b;->actionBarTabBarStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->fG()V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    new-instance v1, Landroid/support/v7/widget/G;

    invoke-direct {v1, v4, v5}, Landroid/support/v7/widget/G;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/D;Landroid/support/v7/app/e;)Landroid/support/v7/internal/widget/G;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/support/v7/internal/widget/G;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/support/v7/internal/widget/G;-><init>(Landroid/support/v7/internal/widget/D;Landroid/content/Context;Landroid/support/v7/app/e;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/G;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/D;->yr:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/G;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private af(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Landroid/support/v7/internal/widget/D;->yr:I

    .line 197
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->requestLayout()V

    .line 198
    return-void
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/D;)Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    return-object v0
.end method

.method private eR()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eS()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-direct {p0}, Landroid/support/v7/internal/widget/D;->eR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return v4

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v0, v0, Landroid/support/v7/internal/widget/n;->zT:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->an(I)V

    goto :goto_0
.end method


# virtual methods
.method public final F(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/D;->AA:Z

    .line 148
    return-void
.end method

.method public final ae(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    check-cast p1, Landroid/support/v7/internal/widget/G;

    .line 368
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/G;->eT()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->select()V

    .line 369
    return-void
.end method

.method public final an(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 180
    iput p1, p0, Landroid/support/v7/internal/widget/D;->AD:I

    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 182
    :goto_0
    if-ge v2, v3, :cond_2

    .line 183
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 184
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 185
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/D;->ao(I)V

    .line 182
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 191
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 193
    :cond_3
    return-void
.end method

.method public final ao(I)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/E;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/E;-><init>(Landroid/support/v7/internal/widget/D;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_0
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->f(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dl()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/D;->af(I)V

    .line 228
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dn()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/D;->AC:I

    .line 229
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 95
    if-ne v3, v7, :cond_6

    move v0, v1

    .line 96
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->setFillViewport(Z)V

    .line 98
    iget-object v4, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v4

    .line 99
    if-le v4, v1, :cond_8

    if-eq v3, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_8

    .line 101
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/D;->AB:I

    .line 106
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/D;->AB:I

    iget v4, p0, Landroid/support/v7/internal/widget/D;->AC:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/D;->AB:I

    .line 111
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/D;->yr:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 113
    if-nez v0, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/D;->AA:Z

    if-eqz v4, :cond_9

    .line 115
    :goto_3
    if-eqz v1, :cond_b

    .line 117
    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V

    .line 118
    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v1, v4, :cond_a

    .line 119
    invoke-direct {p0}, Landroid/support/v7/internal/widget/D;->eR()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b;->actionDropDownStyle:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/support/v7/widget/G;

    invoke-direct {v4, v8, v6}, Landroid/support/v7/widget/G;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->b(Landroid/support/v7/internal/widget/p;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Ay:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/D;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/internal/widget/D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->yw:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v4, Landroid/support/v7/internal/widget/F;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/internal/widget/F;-><init>(Landroid/support/v7/internal/widget/D;B)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/D;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/D;->Ax:Ljava/lang/Runnable;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->Az:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v2, p0, Landroid/support/v7/internal/widget/D;->AD:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 127
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getMeasuredWidth()I

    move-result v1

    .line 128
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getMeasuredWidth()I

    move-result v2

    .line 131
    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    .line 133
    iget v0, p0, Landroid/support/v7/internal/widget/D;->AD:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->an(I)V

    .line 135
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 95
    goto/16 :goto_0

    .line 104
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/D;->AB:I

    goto/16 :goto_1

    .line 108
    :cond_8
    iput v6, p0, Landroid/support/v7/internal/widget/D;->AB:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 113
    goto/16 :goto_3

    .line 121
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/internal/widget/D;->eS()Z

    goto :goto_4

    .line 124
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/internal/widget/D;->eS()Z

    goto :goto_4
.end method
