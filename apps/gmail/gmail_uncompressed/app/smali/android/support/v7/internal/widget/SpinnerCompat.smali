.class final Landroid/support/v7/internal/widget/SpinnerCompat;
.super Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private AK:Landroid/support/v7/internal/widget/P;

.field private AL:Landroid/support/v7/internal/widget/L;

.field AM:I

.field private AN:Z

.field private final AO:Landroid/support/v7/internal/widget/U;

.field private dV:I

.field private is:Landroid/graphics/Rect;

.field private ws:Landroid/support/v7/widget/L;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0, p1, v4, p3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->is:Landroid/graphics/Rect;

    .line 163
    sget-object v0, Landroid/support/v7/a/l;->sX:[I

    invoke-static {p1, v4, v0, p3}, Landroid/support/v7/internal/widget/Z;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/support/v7/internal/widget/Z;

    move-result-object v0

    .line 167
    sget v1, Landroid/support/v7/a/l;->sY:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    sget v1, Landroid/support/v7/a/l;->te:I

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/internal/widget/Z;->getInt(II)I

    move-result v1

    .line 173
    packed-switch v1, :pswitch_data_0

    .line 203
    :goto_0
    sget v1, Landroid/support/v7/a/l;->ta:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/Z;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->dV:I

    .line 209
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    sget v2, Landroid/support/v7/a/l;->td:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/P;->m(Ljava/lang/CharSequence;)V

    .line 211
    sget v1, Landroid/support/v7/a/l;->tc:I

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/internal/widget/Z;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AN:Z

    .line 214
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->recycle()V

    .line 218
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AL:Landroid/support/v7/internal/widget/L;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AL:Landroid/support/v7/internal/widget/L;

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/P;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iput-object v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AL:Landroid/support/v7/internal/widget/L;

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->eU()Landroid/support/v7/internal/widget/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AO:Landroid/support/v7/internal/widget/U;

    .line 225
    return-void

    .line 175
    :pswitch_0
    new-instance v1, Landroid/support/v7/internal/widget/K;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/internal/widget/K;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;B)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    goto :goto_0

    .line 180
    :pswitch_1
    new-instance v1, Landroid/support/v7/internal/widget/M;

    invoke-direct {v1, p0, p1, v4, p3}, Landroid/support/v7/internal/widget/M;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    sget v2, Landroid/support/v7/a/l;->sZ:I

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/widget/Z;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AM:I

    .line 185
    sget v2, Landroid/support/v7/a/l;->tb:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/M;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    .line 189
    new-instance v2, Landroid/support/v7/internal/widget/I;

    invoke-direct {v2, p0, p0, v1}, Landroid/support/v7/internal/widget/I;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/M;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ws:Landroid/support/v7/widget/L;

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/P;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    return-object v0
.end method

.method private b(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 557
    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 561
    :cond_0
    if-eqz p2, :cond_1

    .line 562
    invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 565
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 566
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AN:Z

    if-eqz v1, :cond_2

    .line 567
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 571
    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yx:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 573
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yy:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 577
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 589
    add-int/lit8 v2, v2, 0x0

    .line 592
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 593
    return-void
.end method

.method private e(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zS:Z

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yE:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/c;->ah(I)Landroid/view/View;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_0

    .line 531
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->b(Landroid/view/View;Z)V

    .line 543
    :goto_0
    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yw:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 541
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->b(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/widget/p;)V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b(Landroid/support/v7/internal/widget/p;)V
    .locals 0

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a(Landroid/support/v7/internal/widget/p;)V

    .line 417
    return-void
.end method

.method public final getBaseline()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 378
    const/4 v1, 0x0

    .line 380
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 381
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 387
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 389
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 391
    :cond_1
    return v0

    .line 382
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yw:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yw:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 383
    invoke-direct {p0, v3, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->e(IZ)Landroid/view/View;

    move-result-object v1

    .line 384
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yE:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/c;->b(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 611
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 612
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 613
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/P;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/P;->dismiss()V

    .line 402
    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 447
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    .line 448
    iput-boolean v9, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->aC:Z

    .line 449
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yD:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zS:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->handleDataChanged()V

    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zY:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->et()V

    .line 450
    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->aC:Z

    .line 451
    return-void

    .line 449
    :cond_1
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zT:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zT:I

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->ak(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->yE:Landroid/support/v7/internal/widget/c;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->zI:I

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v6, v1

    invoke-virtual {v5, v8, v7}, Landroid/support/v7/internal/widget/c;->b(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zV:I

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zI:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yw:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zV:I

    invoke-direct {p0, v1, v9}, Landroid/support/v7/internal/widget/SpinnerCompat;->e(IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {p0}, Landroid/support/v4/view/ad;->m(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->dV:I

    invoke-static {v6, v5}, Landroid/support/v4/view/v;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yE:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->eJ()V

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zS:Z

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zN:Z

    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->zV:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->al(I)V

    goto :goto_0

    :sswitch_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v0, v3

    goto :goto_2

    :sswitch_1
    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, -0x2

    const/4 v0, 0x0

    .line 430
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 431
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result v6

    .line 433
    iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->yw:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v7, :cond_1

    :goto_0
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    .line 438
    :cond_0
    return-void

    .line 433
    :cond_1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v1, p0, Landroid/support/v7/internal/widget/n;->zT:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v7}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v3, v11, v1

    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    :goto_1
    if-ge v5, v11, :cond_3

    invoke-interface {v7, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    move-object v1, v2

    :goto_2
    invoke-interface {v7, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v3, v9, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->is:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->is:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->is:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 691
    check-cast p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    .line 693
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 695
    iget-boolean v0, p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->AY:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_0

    .line 698
    new-instance v1, Landroid/support/v7/internal/widget/J;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/J;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    .line 711
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 714
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 684
    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 685
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/P;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->AY:Z

    .line 686
    return-object v1

    .line 685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ws:Landroid/support/v7/widget/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ws:Landroid/support/v7/widget/L;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/L;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    .line 597
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    .line 599
    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 602
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/P;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/P;->show()V

    .line 607
    :cond_0
    return v0
.end method

.method public final setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 362
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->yE:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->clear()V

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 365
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spinner adapter view type count must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AK:Landroid/support/v7/internal/widget/P;

    new-instance v1, Landroid/support/v7/internal/widget/L;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/L;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/P;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance v0, Landroid/support/v7/internal/widget/L;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/L;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AL:Landroid/support/v7/internal/widget/L;

    goto :goto_0
.end method

.method public final setEnabled(Z)V
    .locals 3

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 334
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->AN:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v1

    .line 336
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 337
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method
