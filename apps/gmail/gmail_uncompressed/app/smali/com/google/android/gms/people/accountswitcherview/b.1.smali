.class public final Lcom/google/android/gms/people/accountswitcherview/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/gms/people/accountswitcherview/N;
.implements Lcom/google/android/gms/people/accountswitcherview/Q;


# instance fields
.field private bqh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private bqi:Lcom/google/android/gms/people/model/d;

.field private cgW:Lcom/google/android/gms/people/accountswitcherview/c;

.field private cgX:Lcom/google/android/gms/people/accountswitcherview/e;

.field private cgY:Lcom/google/android/gms/people/accountswitcherview/d;

.field private cgZ:Landroid/widget/FrameLayout;

.field private cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

.field private chb:Lcom/google/android/gms/people/accountswitcherview/r;

.field private chc:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

.field private chd:Z

.field private che:Landroid/view/ViewGroup;

.field private chf:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

.field private chg:Lcom/google/android/gms/people/accountswitcherview/g;

.field private chh:Z

.field private chi:Lcom/google/android/gms/people/accountswitcherview/f;

.field private chj:I

.field private chk:I


# direct methods
.method private a(Lcom/google/android/gms/people/model/d;Z)V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqi:Lcom/google/android/gms/people/model/d;

    .line 461
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqi:Lcom/google/android/gms/people/model/d;

    .line 462
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqh:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqh:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/people/accountswitcherview/r;->a(Ljava/util/List;Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/model/d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqh:Ljava/util/List;

    .line 464
    if-nez p2, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Lcom/google/android/gms/people/model/d;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chb:Lcom/google/android/gms/people/accountswitcherview/r;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqh:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/r;->S(Ljava/util/List;)V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Lcom/google/android/gms/people/model/d;)V

    goto :goto_0
.end method

.method private a(ZLandroid/view/animation/Interpolator;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 611
    if-eqz p1, :cond_0

    move v0, v1

    move v3, v2

    .line 618
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chc:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

    const-string v5, "animatedHeightFraction"

    const/4 v6, 0x2

    new-array v6, v6, [F

    int-to-float v3, v3

    aput v3, v6, v2

    int-to-float v0, v0

    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 620
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 621
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 622
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 623
    return-void

    :cond_0
    move v0, v2

    move v3, v1

    .line 616
    goto :goto_0
.end method

.method public static cY()Z
    .locals 2

    .prologue
    .line 737
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eQ(I)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    .line 382
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chk:I

    .line 383
    return-void
.end method

.method private t(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chj:I

    .line 378
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 571
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chi:Lcom/google/android/gms/people/accountswitcherview/f;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chi:Lcom/google/android/gms/people/accountswitcherview/f;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    .line 576
    :cond_0
    return-void

    .line 571
    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-direct {p0, v4, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->a(ZLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chc:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v0, 0x1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/people/accountswitcherview/b;->a(ZLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chc:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/people/model/d;)V
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->a(Lcom/google/android/gms/people/model/d;Z)V

    .line 660
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgW:Lcom/google/android/gms/people/accountswitcherview/c;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgW:Lcom/google/android/gms/people/accountswitcherview/c;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqi:Lcom/google/android/gms/people/model/d;

    .line 663
    :cond_0
    return-void
.end method

.method public final getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x2

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 676
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->che:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chg:Lcom/google/android/gms/people/accountswitcherview/g;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chg:Lcom/google/android/gms/people/accountswitcherview/g;

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chf:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    if-ne p1, v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->setNavigationMode(I)V

    .line 685
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chf:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v3}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    move-result v3

    if-ne v3, v2, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;->aC(Z)V

    .line 688
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 681
    goto :goto_1

    :cond_3
    move v2, v1

    .line 685
    goto :goto_2
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chb:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/people/accountswitcherview/r;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chb:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/people/accountswitcherview/r;->eR(I)Lcom/google/android/gms/people/model/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/people/accountswitcherview/b;->a(Lcom/google/android/gms/people/model/d;Z)V

    .line 630
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgW:Lcom/google/android/gms/people/accountswitcherview/c;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgW:Lcom/google/android/gms/people/accountswitcherview/c;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->bqi:Lcom/google/android/gms/people/model/d;

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chb:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/people/accountswitcherview/r;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 634
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgY:Lcom/google/android/gms/people/accountswitcherview/d;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgY:Lcom/google/android/gms/people/accountswitcherview/d;

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chb:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/people/accountswitcherview/r;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgX:Lcom/google/android/gms/people/accountswitcherview/e;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgX:Lcom/google/android/gms/people/accountswitcherview/e;

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 291
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 296
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->che:Landroid/view/ViewGroup;

    .line 297
    :goto_0
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chj:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 298
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chj:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 300
    :cond_0
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chk:I

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chk:I

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    .line 303
    :cond_1
    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0
.end method

.method public final onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    move v0, v1

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/b;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 273
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 274
    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->che:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 277
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 281
    iget-boolean v2, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chh:Z

    if-eqz v2, :cond_2

    .line 282
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/b;->getHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 287
    :cond_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 281
    goto :goto_2

    .line 272
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->che:Landroid/view/ViewGroup;

    .line 311
    :goto_0
    if-nez p4, :cond_1

    cmpg-float v1, p3, v2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-gez v1, :cond_1

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/people/accountswitcherview/b;->t(Landroid/view/View;I)V

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->eQ(I)V

    .line 315
    const/4 v0, 0x1

    .line 327
    :goto_1
    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0

    .line 316
    :cond_1
    if-eqz p4, :cond_3

    cmpl-float v1, p3, v2

    if-lez v1, :cond_3

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_2

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/people/accountswitcherview/b;->t(Landroid/view/View;I)V

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_3

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->eQ(I)V

    .line 327
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 340
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->che:Landroid/view/ViewGroup;

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 372
    :cond_0
    :goto_1
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0

    .line 346
    :cond_2
    if-lez p3, :cond_6

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lez v1, :cond_6

    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, p3, :cond_3

    .line 351
    neg-int v1, p3

    .line 357
    :goto_2
    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_4

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/people/accountswitcherview/b;->t(Landroid/view/View;I)V

    .line 364
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_5

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->eQ(I)V

    .line 369
    :goto_4
    aput v2, p4, v2

    .line 370
    aput v1, p4, v5

    goto :goto_1

    .line 353
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    goto :goto_2

    .line 362
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/people/accountswitcherview/b;->t(Landroid/view/View;I)V

    goto :goto_3

    .line 367
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/people/accountswitcherview/b;->eQ(I)V

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 394
    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chd:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->che:Landroid/view/ViewGroup;

    .line 395
    :goto_0
    if-gez p5, :cond_5

    .line 396
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_5

    .line 397
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-gt p5, v0, :cond_0

    .line 398
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p5

    .line 404
    :cond_0
    :goto_1
    if-eqz p5, :cond_1

    .line 406
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p5

    if-lez v0, :cond_3

    .line 407
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->t(Landroid/view/View;I)V

    .line 411
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    sub-int/2addr v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cgZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->eQ(I)V

    .line 417
    :cond_1
    :goto_3
    return-void

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/b;->cha:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0

    .line 409
    :cond_3
    neg-int v0, p5

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->t(Landroid/view/View;I)V

    goto :goto_2

    .line 414
    :cond_4
    neg-int v0, p5

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/b;->eQ(I)V

    goto :goto_3

    :cond_5
    move p5, v0

    goto :goto_1
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/b;->chh:Z

    return v0
.end method
