.class final Landroid/support/v4/app/q;
.super Landroid/support/v4/app/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field static DEBUG:Z

.field static final bA:Z

.field static final bW:Landroid/view/animation/Interpolator;

.field static final bX:Landroid/view/animation/Interpolator;

.field static final bY:Landroid/view/animation/Interpolator;

.field static final bZ:Landroid/view/animation/Interpolator;


# instance fields
.field aG:Landroid/support/v4/app/k;

.field bB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field bC:[Ljava/lang/Runnable;

.field bD:Z

.field bE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field bF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field bG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field bH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/a;",
            ">;"
        }
    .end annotation
.end field

.field bI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field bJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/a;",
            ">;"
        }
    .end annotation
.end field

.field bK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field bL:Ljava/util/ArrayList;

.field bM:I

.field bN:Landroid/support/v4/app/Fragment;

.field bO:Z

.field bP:Z

.field bQ:Z

.field bR:Ljava/lang/String;

.field bS:Z

.field bT:Landroid/os/Bundle;

.field bU:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field bV:Ljava/lang/Runnable;

.field bo:Landroid/support/v4/app/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 410
    sput-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    .line 413
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/q;->bA:Z

    .line 746
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/q;->bW:Landroid/view/animation/Interpolator;

    .line 747
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/q;->bX:Landroid/view/animation/Interpolator;

    .line 748
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/q;->bY:Landroid/view/animation/Interpolator;

    .line 749
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/q;->bZ:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 409
    invoke-direct {p0}, Landroid/support/v4/app/p;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/q;->bM:I

    .line 448
    iput-object v1, p0, Landroid/support/v4/app/q;->bT:Landroid/os/Bundle;

    .line 449
    iput-object v1, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    .line 451
    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0, p0}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/q;)V

    iput-object v0, p0, Landroid/support/v4/app/q;->bV:Ljava/lang/Runnable;

    .line 2205
    return-void
.end method

.method private K()V
    .locals 3

    .prologue
    .line 1364
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    if-eqz v0, :cond_0

    .line 1365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bR:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1369
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/q;->bR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_1
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 1513
    iget-object v0, p0, Landroid/support/v4/app/q;->bL:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1514
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/q;->bL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1515
    iget-object v1, p0, Landroid/support/v4/app/q;->bL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 579
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 580
    if-ne v1, v0, :cond_1

    .line 581
    const/4 v0, 0x0

    .line 592
    :cond_0
    :goto_0
    return-object v0

    .line 583
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    .line 587
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 588
    if-nez v0, :cond_0

    .line 589
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragment no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 769
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 770
    sget-object v1, Landroid/support/v4/app/q;->bX:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 771
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 772
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 755
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 756
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 758
    sget-object v1, Landroid/support/v4/app/q;->bW:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 759
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 760
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 761
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 762
    sget-object v1, Landroid/support/v4/app/q;->bX:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 763
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 764
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 765
    return-object v9
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 777
    iget v0, p1, Landroid/support/v4/app/Fragment;->aS:I

    invoke-static {}, Landroid/support/v4/app/Fragment;->j()Landroid/view/animation/Animation;

    .line 779
    iget v0, p1, Landroid/support/v4/app/Fragment;->aS:I

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget v2, p1, Landroid/support/v4/app/Fragment;->aS:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_0

    .line 831
    :goto_0
    return-object v0

    .line 790
    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    .line 791
    goto :goto_0

    .line 794
    :cond_1
    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    .line 795
    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    .line 796
    goto :goto_0

    .line 794
    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 799
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 814
    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 815
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 817
    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    .line 818
    goto :goto_0

    .line 801
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/q;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 803
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/q;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 805
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/q;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 807
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    const v0, 0x3f89999a    # 1.075f

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/q;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 809
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-static {v4, v3}, Landroid/support/v4/app/q;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 811
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-static {v3, v4}, Landroid/support/v4/app/q;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 831
    goto :goto_0

    .line 794
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    .line 799
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/a;)V
    .locals 4

    .prologue
    .line 1421
    monitor-enter p0

    .line 1422
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    .line 1425
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1426
    if-ge p1, v0, :cond_2

    .line 1427
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1442
    :goto_0
    monitor-exit p0

    return-void

    .line 1430
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1431
    iget-object v1, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    iget-object v1, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    .line 1435
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1439
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    .prologue
    .line 459
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v0, Landroid/support/v4/f/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/f/e;-><init>(Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 463
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/k;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    throw p1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 471
    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/q;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 472
    :catch_1
    move-exception v0

    .line 473
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1108
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/q;->a(IIIZ)V

    .line 1109
    return-void
.end method

.method private d(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1310
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1311
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1312
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->aJ:I

    if-ne v2, p1, :cond_1

    .line 1326
    :cond_0
    :goto_1
    return-object v0

    .line 1310
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1317
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1319
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1320
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1321
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->aJ:I

    if-eq v2, p1, :cond_0

    .line 1319
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1326
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1104
    iget v2, p0, Landroid/support/v4/app/q;->bM:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1105
    return-void
.end method

.method private e(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 1621
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aV:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1625
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    .line 1629
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aV:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1630
    iget-object v0, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1631
    iget-object v0, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    .line 1632
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    goto :goto_0

    .line 1627
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->bU:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public static f(I)I
    .locals 1

    .prologue
    .line 2069
    const/4 v0, 0x0

    .line 2070
    sparse-switch p0, :sswitch_data_0

    .line 2081
    :goto_0
    return v0

    .line 2072
    :sswitch_0
    const/16 v0, 0x2002

    .line 2073
    goto :goto_0

    .line 2075
    :sswitch_1
    const/16 v0, 0x1001

    .line 2076
    goto :goto_0

    .line 2078
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2070
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final H()Landroid/support/v4/app/z;
    .locals 1

    .prologue
    .line 481
    new-instance v0, Landroid/support/v4/app/a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/q;)V

    return-object v0
.end method

.method public final I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    return-object v0
.end method

.method final J()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1145
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1153
    :cond_0
    return-void

    :cond_1
    move v6, v3

    .line 1147
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1148
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1149
    if-eqz v1, :cond_2

    .line 1150
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->aW:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/q;->bD:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bS:Z

    .line 1147
    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1150
    :cond_3
    iput-boolean v3, v1, Landroid/support/v4/app/Fragment;->aW:Z

    iget v2, p0, Landroid/support/v4/app/q;->bM:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_1
.end method

.method public final L()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1460
    iget-boolean v1, p0, Landroid/support/v4/app/q;->bD:Z

    if-eqz v1, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v3, v3, Landroid/support/v4/app/k;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 1473
    :goto_0
    monitor-enter p0

    .line 1474
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1475
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bS:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    .line 1498
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1499
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1500
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->aY:Landroid/support/v4/app/M;

    if-eqz v5, :cond_3

    .line 1501
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->aY:Landroid/support/v4/app/M;

    invoke-virtual {v0}, Landroid/support/v4/app/M;->Z()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1498
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1478
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1479
    iget-object v1, p0, Landroid/support/v4/app/q;->bC:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/q;->bC:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    .line 1480
    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/q;->bC:[Ljava/lang/Runnable;

    .line 1482
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/q;->bC:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1483
    iget-object v1, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1484
    iget-object v1, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v1, v1, Landroid/support/v4/app/k;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/q;->bV:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1485
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1487
    iput-boolean v0, p0, Landroid/support/v4/app/q;->bD:Z

    move v1, v2

    .line 1488
    :goto_2
    if-ge v1, v3, :cond_7

    .line 1489
    iget-object v4, p0, Landroid/support/v4/app/q;->bC:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1490
    iget-object v4, p0, Landroid/support/v4/app/q;->bC:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1492
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/q;->bD:Z

    move v1, v0

    .line 1494
    goto :goto_0

    .line 1504
    :cond_8
    if-nez v4, :cond_9

    .line 1505
    iput-boolean v2, p0, Landroid/support/v4/app/q;->bS:Z

    .line 1506
    invoke-virtual {p0}, Landroid/support/v4/app/q;->J()V

    .line 1509
    :cond_9
    return v1
.end method

.method final N()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1602
    const/4 v1, 0x0

    .line 1603
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1604
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1605
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1606
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->aN:Z

    if-eqz v2, :cond_1

    .line 1607
    if-nez v1, :cond_0

    .line 1608
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->aO:Z

    .line 1612
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->y:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/Fragment;->aw:I

    .line 1613
    sget-boolean v2, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retainNonConfig: keeping retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1612
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1617
    :cond_3
    return-object v1
.end method

.method final O()Landroid/os/Parcelable;
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1672
    invoke-virtual {p0}, Landroid/support/v4/app/q;->L()Z

    .line 1674
    sget-boolean v0, Landroid/support/v4/app/q;->bA:Z

    if-eqz v0, :cond_0

    .line 1684
    iput-boolean v3, p0, Landroid/support/v4/app/q;->bP:Z

    .line 1687
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1782
    :cond_1
    :goto_0
    return-object v2

    .line 1692
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1693
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v1, v4

    .line 1695
    :goto_1
    if-ge v5, v6, :cond_10

    .line 1696
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1697
    if-eqz v0, :cond_19

    .line 1698
    iget v1, v0, Landroid/support/v4/app/Fragment;->y:I

    if-gez v1, :cond_3

    .line 1699
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/Fragment;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    .line 1706
    :cond_3
    new-instance v8, Landroid/support/v4/app/FragmentState;

    invoke-direct {v8, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1707
    aput-object v8, v7, v5

    .line 1709
    iget v1, v0, Landroid/support/v4/app/Fragment;->ao:I

    if-lez v1, :cond_f

    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    if-nez v1, :cond_f

    .line 1710
    iget-object v1, p0, Landroid/support/v4/app/q;->bT:Landroid/os/Bundle;

    if-nez v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/q;->bT:Landroid/os/Bundle;

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/q;->bT:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/support/v4/app/q;->bT:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Landroid/support/v4/app/q;->bT:Landroid/os/Bundle;

    iput-object v2, p0, Landroid/support/v4/app/q;->bT:Landroid/os/Bundle;

    :goto_2
    iget-object v9, v0, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v9, :cond_5

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->e(Landroid/support/v4/app/Fragment;)V

    :cond_5
    iget-object v9, v0, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    if-eqz v9, :cond_7

    if-nez v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_6
    const-string v9, "android:view_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_7
    iget-boolean v9, v0, Landroid/support/v4/app/Fragment;->aX:Z

    if-nez v9, :cond_9

    if-nez v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_8
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v0, Landroid/support/v4/app/Fragment;->aX:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    .line 1712
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_d

    .line 1713
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->y:I

    if-gez v1, :cond_a

    .line 1714
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    .line 1718
    :cond_a
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    if-nez v1, :cond_b

    .line 1719
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    .line 1721
    :cond_b
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    iget v11, v10, Landroid/support/v4/app/Fragment;->y:I

    if-gez v11, :cond_c

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    :cond_c
    iget v10, v10, Landroid/support/v4/app/Fragment;->y:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1723
    iget v1, v0, Landroid/support/v4/app/Fragment;->ax:I

    if-eqz v1, :cond_d

    .line 1724
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->ax:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1734
    :cond_d
    :goto_3
    sget-boolean v1, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Saved state of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v0, v3

    .line 1695
    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto/16 :goto_1

    .line 1731
    :cond_f
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    goto :goto_3

    .line 1739
    :cond_10
    if-nez v1, :cond_11

    .line 1740
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1748
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1749
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1750
    if-lez v5, :cond_14

    .line 1751
    new-array v1, v5, [I

    move v3, v4

    .line 1752
    :goto_5
    if-ge v3, v5, :cond_15

    .line 1753
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->y:I

    aput v0, v1, v3

    .line 1754
    aget v0, v1, v3

    if-gez v0, :cond_12

    .line 1755
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    .line 1759
    :cond_12
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "saveAllState: adding fragment #"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_14
    move-object v1, v2

    .line 1766
    :cond_15
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 1767
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1768
    if-lez v5, :cond_17

    .line 1769
    new-array v2, v5, [Landroid/support/v4/app/BackStackState;

    move v3, v4

    .line 1770
    :goto_6
    if-ge v3, v5, :cond_17

    .line 1771
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/a;)V

    aput-object v4, v2, v3

    .line 1772
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "saveAllState: adding back stack #"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :cond_16
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 1778
    :cond_17
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1779
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->cf:[Landroid/support/v4/app/FragmentState;

    .line 1780
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->cg:[I

    .line 1781
    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->ch:[Landroid/support/v4/app/BackStackState;

    move-object v2, v0

    .line 1782
    goto/16 :goto_0

    :cond_18
    move-object v1, v2

    goto/16 :goto_2

    :cond_19
    move v0, v1

    goto/16 :goto_4
.end method

.method public final P()V
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    .line 1908
    return-void
.end method

.method public final Q()V
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    .line 1912
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1913
    return-void
.end method

.method public final R()V
    .locals 1

    .prologue
    .line 1916
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    .line 1917
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1918
    return-void
.end method

.method public final S()V
    .locals 1

    .prologue
    .line 1921
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    .line 1922
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1923
    return-void
.end method

.method public final T()V
    .locals 1

    .prologue
    .line 1931
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1932
    return-void
.end method

.method public final U()V
    .locals 1

    .prologue
    .line 1944
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1945
    return-void
.end method

.method public final V()V
    .locals 1

    .prologue
    .line 1948
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1949
    return-void
.end method

.method public final W()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1952
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bQ:Z

    .line 1953
    invoke-virtual {p0}, Landroid/support/v4/app/q;->L()Z

    .line 1954
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1955
    iput-object v1, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    .line 1956
    iput-object v1, p0, Landroid/support/v4/app/q;->bo:Landroid/support/v4/app/o;

    .line 1957
    iput-object v1, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    .line 1958
    return-void
.end method

.method public final X()V
    .locals 2

    .prologue
    .line 1972
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1973
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1974
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1975
    if-eqz v0, :cond_0

    .line 1976
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->v()V

    .line 1973
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1980
    :cond_1
    return-void
.end method

.method final Y()Landroid/view/LayoutInflater$Factory;
    .locals 0

    .prologue
    .line 2202
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/a;)I
    .locals 4

    .prologue
    .line 1401
    monitor-enter p0

    .line 1402
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1403
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    .line 1406
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1407
    sget-boolean v1, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    monitor-exit p0

    .line 1415
    :goto_0
    return v0

    .line 1412
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1413
    sget-boolean v1, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(IIIZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1112
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/q;->bM:I

    if-ne v0, p1, :cond_2

    .line 1142
    :cond_1
    :goto_0
    return-void

    .line 1120
    :cond_2
    iput p1, p0, Landroid/support/v4/app/q;->bM:I

    .line 1121
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    .line 1123
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1124
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1125
    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1126
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1127
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aY:Landroid/support/v4/app/M;

    if-eqz v0, :cond_5

    .line 1128
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aY:Landroid/support/v4/app/M;

    invoke-virtual {v0}, Landroid/support/v4/app/M;->Z()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1123
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 1133
    :cond_3
    if-nez v7, :cond_4

    .line 1134
    invoke-virtual {p0}, Landroid/support/v4/app/q;->J()V

    .line 1137
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/q;->bM:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1138
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->D()V

    .line 1139
    iput-boolean v5, p0, Landroid/support/v4/app/q;->bO:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1788
    if-nez p1, :cond_1

    .line 1896
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1790
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->cf:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 1794
    if-eqz p2, :cond_4

    move v1, v2

    .line 1795
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1796
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1797
    sget-boolean v3, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: re-attaching retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->cf:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->y:I

    aget-object v3, v3, v4

    .line 1799
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->cj:Landroid/support/v4/app/Fragment;

    .line 1800
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    .line 1801
    iput v2, v0, Landroid/support/v4/app/Fragment;->aE:I

    .line 1802
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->aC:Z

    .line 1803
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1804
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    .line 1805
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 1806
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {v5}, Landroid/support/v4/app/k;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1807
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    .line 1809
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->ar:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    .line 1795
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1816
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->cf:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    .line 1817
    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1818
    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v2

    .line 1820
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->cf:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 1821
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->cf:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1822
    if-eqz v1, :cond_7

    .line 1823
    iget-object v3, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v4, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/k;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1824
    sget-boolean v4, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreAllState: active #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    iput-object v7, v1, Landroid/support/v4/app/FragmentState;->cj:Landroid/support/v4/app/Fragment;

    .line 1820
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1831
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    iget-object v1, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 1833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    .line 1835
    :cond_8
    sget-boolean v1, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: avail #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1841
    :cond_a
    if-eqz p2, :cond_d

    move v3, v2

    .line 1842
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 1843
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1844
    iget v1, v0, Landroid/support/v4/app/Fragment;->aw:I

    if-ltz v1, :cond_b

    .line 1845
    iget v1, v0, Landroid/support/v4/app/Fragment;->aw:I

    iget-object v4, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 1846
    iget-object v1, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->aw:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    .line 1842
    :cond_b
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1848
    :cond_c
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Re-attaching retained fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->aw:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1857
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->cg:[I

    if-eqz v0, :cond_11

    .line 1858
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->cg:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    move v1, v2

    .line 1859
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->cg:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 1860
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->cg:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1861
    if-nez v0, :cond_e

    .line 1862
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No instantiated fragment for index #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->cg:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    .line 1865
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1866
    sget-boolean v3, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v3, :cond_f

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: added #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_f
    iget-object v3, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1868
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1870
    :cond_10
    iget-object v3, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1873
    :cond_11
    iput-object v7, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    .line 1877
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->ch:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_15

    .line 1878
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->ch:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    move v0, v2

    .line 1879
    :goto_7
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->ch:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1880
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->ch:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/q;)Landroid/support/v4/app/a;

    move-result-object v1

    .line 1881
    sget-boolean v3, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v3, :cond_13

    .line 1882
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: back stack #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/app/a;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    new-instance v3, Landroid/support/v4/f/e;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/f/e;-><init>(Ljava/lang/String;)V

    .line 1885
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1886
    const-string v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1888
    :cond_13
    iget-object v3, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    iget v3, v1, Landroid/support/v4/app/a;->y:I

    if-ltz v3, :cond_14

    .line 1890
    iget v3, v1, Landroid/support/v4/app/a;->y:I

    invoke-direct {p0, v3, v1}, Landroid/support/v4/app/q;->a(ILandroid/support/v4/app/a;)V

    .line 1879
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1894
    :cond_15
    iput-object v7, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1212
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->aE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->e()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1214
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->aM:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 1215
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1216
    iget-object v2, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1218
    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->aP:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->aQ:Z

    if-eqz v2, :cond_3

    .line 1219
    iput-boolean v1, p0, Landroid/support/v4/app/q;->bO:Z

    .line 1221
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1222
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->az:Z

    .line 1223
    if-eqz v0, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1226
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 1213
    goto :goto_0

    :cond_6
    move v2, v1

    .line 1223
    goto :goto_1
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 849
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aM:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    .line 852
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->az:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->ao:I

    if-le p2, v0, :cond_2

    .line 854
    iget p2, p1, Landroid/support/v4/app/Fragment;->ao:I

    .line 858
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aW:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/Fragment;->ao:I

    if-ge v0, v8, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    .line 861
    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->ao:I

    if-ge v0, p2, :cond_1d

    .line 865
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aB:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aC:Z

    if-nez v0, :cond_4

    .line 1101
    :goto_0
    return-void

    .line 868
    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ap:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 873
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ap:Landroid/view/View;

    .line 874
    iget v2, p1, Landroid/support/v4/app/Fragment;->aq:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 876
    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->ao:I

    packed-switch v0, :pswitch_data_0

    .line 1100
    :cond_6
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->ao:I

    goto :goto_0

    .line 878
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 880
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 881
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    .line 883
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/q;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    .line 885
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->av:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 886
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->ax:I

    .line 889
    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->aX:Z

    .line 891
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aX:Z

    if-nez v0, :cond_9

    .line 892
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->aW:Z

    .line 893
    if-le p2, v6, :cond_9

    move p2, v6

    .line 898
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aG:Landroid/support/v4/app/k;

    .line 899
    iget-object v0, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/support/v4/app/Fragment;

    .line 900
    iget-object v0, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->aH:Landroid/support/v4/app/q;

    :goto_2
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aF:Landroid/support/v4/app/q;

    .line 902
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aR:Z

    .line 903
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 904
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aR:Z

    if-nez v0, :cond_b

    .line 905
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->bn:Landroid/support/v4/app/q;

    goto :goto_2

    .line 908
    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_c

    .line 909
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-static {}, Landroid/support/v4/app/k;->E()V

    .line 912
    :cond_c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aO:Z

    if-nez v0, :cond_d

    .line 913
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 915
    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aO:Z

    .line 916
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aB:Z

    if-eqz v0, :cond_f

    .line 920
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    .line 922
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 923
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aV:Landroid/view/View;

    .line 924
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/S;->d(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    .line 925
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aL:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-static {}, Landroid/support/v4/app/Fragment;->k()V

    .line 932
    :cond_f
    :goto_3
    :pswitch_1
    if-le p2, v5, :cond_17

    .line 933
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aB:Z

    if-nez v0, :cond_15

    .line 936
    iget v0, p1, Landroid/support/v4/app/Fragment;->d:I

    if-eqz v0, :cond_32

    .line 937
    iget-object v0, p0, Landroid/support/v4/app/q;->bo:Landroid/support/v4/app/o;

    iget v1, p1, Landroid/support/v4/app/Fragment;->d:I

    invoke-interface {v0, v1}, Landroid/support/v4/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 938
    if-nez v0, :cond_11

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->aD:Z

    if-nez v1, :cond_11

    .line 939
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/support/v4/app/Fragment;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/Fragment;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/q;->a(Ljava/lang/RuntimeException;)V

    .line 946
    :cond_11
    :goto_4
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aT:Landroid/view/ViewGroup;

    .line 947
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    .line 949
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 950
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->aV:Landroid/view/View;

    .line 951
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/S;->d(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    .line 952
    if-eqz v0, :cond_13

    .line 953
    invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 955
    if-eqz v1, :cond_12

    .line 956
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 958
    :cond_12
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 960
    :cond_13
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aL:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 961
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-static {}, Landroid/support/v4/app/Fragment;->k()V

    .line 967
    :cond_15
    :goto_5
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 968
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 969
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->d()V

    .line 971
    :cond_16
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    .line 975
    :cond_17
    :pswitch_2
    if-le p2, v6, :cond_19

    .line 976
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_18
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->t()V

    .line 980
    :cond_19
    :pswitch_3
    if-le p2, v8, :cond_6

    .line 981
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_1a
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->aA:Z

    .line 983
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->u()V

    .line 984
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    .line 985
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 928
    :cond_1b
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aV:Landroid/view/View;

    goto/16 :goto_3

    .line 963
    :cond_1c
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aV:Landroid/view/View;

    goto :goto_5

    .line 988
    :cond_1d
    iget v0, p1, Landroid/support/v4/app/Fragment;->ao:I

    if-le v0, p2, :cond_6

    .line 989
    iget v0, p1, Landroid/support/v4/app/Fragment;->ao:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1052
    :cond_1e
    :goto_6
    :pswitch_4
    if-gtz p2, :cond_6

    .line 1053
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bQ:Z

    if-eqz v0, :cond_1f

    .line 1054
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ap:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1061
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ap:Landroid/view/View;

    .line 1062
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ap:Landroid/view/View;

    .line 1063
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1066
    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ap:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 1071
    iput p2, p1, Landroid/support/v4/app/Fragment;->aq:I

    move p2, v5

    .line 1072
    goto/16 :goto_1

    .line 991
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_21

    .line 992
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_20
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->w()V

    .line 994
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aA:Z

    .line 997
    :cond_21
    :pswitch_6
    if-ge p2, v8, :cond_23

    .line 998
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_22
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->x()V

    .line 1002
    :cond_23
    :pswitch_7
    if-ge p2, v6, :cond_25

    .line 1003
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STOPPED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()V

    .line 1007
    :cond_25
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1e

    .line 1008
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_26
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 1012
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->as:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1013
    invoke-direct {p0, p1}, Landroid/support/v4/app/q;->e(Landroid/support/v4/app/Fragment;)V

    .line 1016
    :cond_27
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->z()V

    .line 1017
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aT:Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 1019
    iget v0, p0, Landroid/support/v4/app/q;->bM:I

    if-lez v0, :cond_31

    iget-boolean v0, p0, Landroid/support/v4/app/q;->bQ:Z

    if-nez v0, :cond_31

    .line 1020
    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1023
    :goto_7
    if-eqz v0, :cond_28

    .line 1025
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->ap:Landroid/view/View;

    .line 1026
    iput p2, p1, Landroid/support/v4/app/Fragment;->aq:I

    .line 1027
    new-instance v1, Landroid/support/v4/app/t;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/app/t;-><init>(Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1043
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1045
    :cond_28
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aT:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1047
    :cond_29
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aT:Landroid/view/ViewGroup;

    .line 1048
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    .line 1049
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aV:Landroid/view/View;

    goto/16 :goto_6

    .line 1074
    :cond_2a
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_2b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aO:Z

    if-nez v0, :cond_2c

    .line 1076
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->A()V

    .line 1079
    :cond_2c
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aR:Z

    .line 1080
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1081
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aR:Z

    if-nez v0, :cond_2d

    .line 1082
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_2d
    if-nez p5, :cond_6

    .line 1086
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aO:Z

    if-nez v0, :cond_30

    .line 1087
    iget v0, p1, Landroid/support/v4/app/Fragment;->y:I

    if-ltz v0, :cond_6

    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->y:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    if-nez v0, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    :cond_2f
    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()V

    goto/16 :goto_1

    .line 1089
    :cond_30
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aG:Landroid/support/v4/app/k;

    .line 1090
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/support/v4/app/Fragment;

    .line 1091
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aF:Landroid/support/v4/app/q;

    .line 1092
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/support/v4/app/q;

    goto/16 :goto_1

    :cond_31
    move-object v0, v7

    goto/16 :goto_7

    :cond_32
    move-object v0, v7

    goto/16 :goto_4

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 989
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1190
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    .line 1193
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->y:I

    if-gez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aM:Z

    if-nez v0, :cond_8

    .line 1196
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->y:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1199
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1201
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->az:Z

    .line 1202
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aP:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aQ:Z

    if-eqz v0, :cond_7

    .line 1203
    iput-boolean v3, p0, Landroid/support/v4/app/q;->bO:Z

    .line 1205
    :cond_7
    if-eqz p2, :cond_8

    .line 1206
    invoke-direct {p0, p1}, Landroid/support/v4/app/q;->d(Landroid/support/v4/app/Fragment;)V

    .line 1209
    :cond_8
    return-void
.end method

.method public final a(Landroid/support/v4/app/k;Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 1900
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1901
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    .line 1902
    iput-object p2, p0, Landroid/support/v4/app/q;->bo:Landroid/support/v4/app/o;

    .line 1903
    iput-object p3, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    .line 1904
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2

    .prologue
    .line 1382
    if-nez p2, :cond_0

    .line 1383
    invoke-direct {p0}, Landroid/support/v4/app/q;->K()V

    .line 1385
    :cond_0
    monitor-enter p0

    .line 1386
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bQ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    if-nez v0, :cond_2

    .line 1387
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1389
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    .line 1392
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object v0, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1394
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/q;->bV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1395
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/q;->bV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1397
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1332
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1333
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1334
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->aK:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1348
    :cond_0
    :goto_1
    return-object v0

    .line 1332
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1339
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1341
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1342
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1343
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->aK:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1341
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1348
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 523
    if-gez p1, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    new-instance v0, Landroid/support/v4/app/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/q;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/q;->a(Ljava/lang/Runnable;Z)V

    .line 531
    return-void
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1229
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aL:Z

    if-nez v0, :cond_4

    .line 1231
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aL:Z

    .line 1232
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_1

    .line 1236
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1238
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aP:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aQ:Z

    if-eqz v0, :cond_3

    .line 1241
    iput-boolean v3, p0, Landroid/support/v4/app/q;->bO:Z

    .line 1243
    :cond_3
    invoke-static {}, Landroid/support/v4/app/Fragment;->g()V

    .line 1245
    :cond_4
    return-void
.end method

.method final b(Landroid/support/v4/app/a;)V
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    .line 1524
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-direct {p0}, Landroid/support/v4/app/q;->M()V

    .line 1526
    return-void
.end method

.method final b(II)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1529
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return v3

    .line 1532
    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    .line 1533
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1534
    if-ltz v0, :cond_0

    .line 1537
    iget-object v1, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1538
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1539
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1540
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1541
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/support/v4/app/a;->a(ZLandroid/support/v4/app/f;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/f;

    .line 1596
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/q;->M()V

    move v3, v2

    .line 1598
    goto :goto_0

    .line 1544
    :cond_3
    const/4 v0, -0x1

    .line 1545
    if-ltz p1, :cond_7

    .line 1548
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1549
    :goto_1
    if-ltz v1, :cond_5

    .line 1550
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1551
    if-ltz p1, :cond_4

    iget v0, v0, Landroid/support/v4/app/a;->y:I

    if-eq p1, v0, :cond_5

    .line 1555
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 1558
    goto :goto_1

    .line 1559
    :cond_5
    if-ltz v1, :cond_0

    .line 1562
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    .line 1563
    add-int/lit8 v1, v1, -0x1

    .line 1565
    :goto_2
    if-ltz v1, :cond_6

    .line 1566
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1567
    if-ltz p1, :cond_6

    iget v0, v0, Landroid/support/v4/app/a;->y:I

    if-ne p1, v0, :cond_6

    .line 1569
    add-int/lit8 v1, v1, -0x1

    .line 1570
    goto :goto_2

    :cond_6
    move v0, v1

    .line 1576
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1579
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    iget-object v1, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-le v1, v0, :cond_8

    .line 1582
    iget-object v5, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1584
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 1585
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1586
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v1, v3

    .line 1587
    :goto_4
    if-gt v1, v7, :cond_9

    .line 1588
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1587
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    move-object v5, v4

    move v4, v3

    .line 1591
    :goto_5
    if-gt v4, v7, :cond_2

    .line 1592
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Popping back stack state: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    if-ne v4, v7, :cond_b

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/support/v4/app/a;->a(ZLandroid/support/v4/app/f;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/f;

    move-result-object v1

    .line 1591
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_5

    :cond_b
    move v1, v3

    .line 1593
    goto :goto_6
.end method

.method public final b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1983
    .line 1984
    const/4 v1, 0x0

    .line 1985
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    .line 1986
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1987
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1988
    if-eqz v0, :cond_1

    .line 1989
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1990
    const/4 v2, 0x1

    .line 1991
    if-nez v1, :cond_0

    .line 1992
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1994
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    .line 1986
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2000
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/q;->bI:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 2001
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 2002
    iget-object v0, p0, Landroid/support/v4/app/q;->bI:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2003
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2004
    :cond_4
    invoke-static {}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2001
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2009
    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/q;->bI:Ljava/util/ArrayList;

    .line 2011
    return v2
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1248
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aL:Z

    if-eqz v0, :cond_4

    .line 1250
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aL:Z

    .line 1251
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1252
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1254
    if-eqz v0, :cond_1

    .line 1255
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1257
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aP:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aQ:Z

    if-eqz v0, :cond_3

    .line 1260
    iput-boolean v4, p0, Landroid/support/v4/app/q;->bO:Z

    .line 1262
    :cond_3
    invoke-static {}, Landroid/support/v4/app/Fragment;->g()V

    .line 1264
    :cond_4
    return-void
.end method

.method public final c(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2015
    .line 2016
    iget-object v1, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    .line 2017
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2018
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2019
    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    const/4 v2, 0x1

    .line 2017
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2026
    :cond_2
    return v2
.end method

.method public final c(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2030
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2031
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2032
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2033
    if-eqz v0, :cond_1

    .line 2034
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    const/4 v2, 0x1

    .line 2040
    :cond_0
    return v2

    .line 2031
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1267
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aM:Z

    if-nez v0, :cond_4

    .line 1269
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->aM:Z

    .line 1270
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-eqz v0, :cond_4

    .line 1272
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1273
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1276
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aP:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aQ:Z

    if-eqz v0, :cond_3

    .line 1277
    iput-boolean v2, p0, Landroid/support/v4/app/q;->bO:Z

    .line 1279
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->ay:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1280
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1283
    :cond_4
    return-void
.end method

.method public final d(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2059
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2060
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2061
    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V

    .line 2059
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2066
    :cond_1
    return-void
.end method

.method public final d(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2044
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2045
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2046
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2047
    if-eqz v0, :cond_1

    .line 2048
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2049
    const/4 v2, 0x1

    .line 2054
    :cond_0
    return v2

    .line 2045
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1962
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1963
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1964
    if-eqz v0, :cond_0

    .line 1965
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/res/Configuration;)V

    .line 1962
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1969
    :cond_1
    return-void
.end method

.method public final dispatchResume()V
    .locals 1

    .prologue
    .line 1926
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    .line 1927
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1928
    return-void
.end method

.method public final dispatchStop()V
    .locals 1

    .prologue
    .line 1938
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    .line 1940
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;->c(I)V

    .line 1941
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 638
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 640
    if-lez v4, :cond_1

    .line 641
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 644
    :goto_0
    if-ge v2, v4, :cond_1

    .line 645
    iget-object v0, p0, Landroid/support/v4/app/q;->bE:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 646
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 647
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 648
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 644
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 657
    if-lez v4, :cond_2

    .line 658
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 659
    :goto_1
    if-ge v2, v4, :cond_2

    .line 660
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 661
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 662
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 667
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->bI:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Landroid/support/v4/app/q;->bI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 669
    if-lez v4, :cond_3

    .line 670
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 671
    :goto_2
    if-ge v2, v4, :cond_3

    .line 672
    iget-object v0, p0, Landroid/support/v4/app/q;->bI:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 673
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 674
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 679
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 680
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 681
    if-lez v4, :cond_4

    .line 682
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 683
    :goto_3
    if-ge v2, v4, :cond_4

    .line 684
    iget-object v0, p0, Landroid/support/v4/app/q;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 685
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 686
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 683
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 692
    :cond_4
    monitor-enter p0

    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 694
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 695
    if-lez v3, :cond_5

    .line 696
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 697
    :goto_4
    if-ge v2, v3, :cond_5

    .line 698
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 699
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 700
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 697
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 705
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 706
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 712
    iget-object v0, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 713
    if-lez v2, :cond_7

    .line 714
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    :goto_5
    if-ge v1, v2, :cond_7

    .line 716
    iget-object v0, p0, Landroid/support/v4/app/q;->bB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 717
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 718
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 715
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 723
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->bo:Landroid/support/v4/app/o;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 726
    iget-object v0, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 727
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 729
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/q;->bM:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 730
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/q;->bP:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 731
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/q;->bQ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 732
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bO:Z

    if-eqz v0, :cond_9

    .line 733
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bO:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 736
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/q;->bR:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 737
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Landroid/support/v4/app/q;->bR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 741
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Landroid/support/v4/app/q;->bG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    :cond_b
    return-void
.end method

.method public final e(I)V
    .locals 3

    .prologue
    .line 1446
    monitor-enter p0

    .line 1447
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/q;->bJ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1448
    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    .line 1451
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bK:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1286
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aM:Z

    if-eqz v0, :cond_5

    .line 1288
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->aM:Z

    .line 1289
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v0, :cond_5

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    .line 1293
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1294
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/q;->bF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1299
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aP:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aQ:Z

    if-eqz v0, :cond_4

    .line 1300
    iput-boolean v3, p0, Landroid/support/v4/app/q;->bO:Z

    .line 1302
    :cond_4
    iget v2, p0, Landroid/support/v4/app/q;->bM:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1305
    :cond_5
    return-void
.end method

.method public final executePendingTransactions()Z
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/support/v4/app/q;->L()Z

    move-result v0

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Landroid/support/v4/app/q;->bQ:Z

    return v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2110
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 2198
    :goto_0
    return-object v0

    .line 2114
    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    sget-object v4, Landroid/support/v4/app/u;->ce:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2116
    if-nez v0, :cond_e

    .line 2117
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2119
    :goto_1
    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 2120
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2121
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2123
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-static {v0, v6}, Landroid/support/v4/app/Fragment;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 2126
    goto :goto_0

    .line 2129
    :cond_1
    if-eq v7, v5, :cond_5

    invoke-direct {p0, v7}, Landroid/support/v4/app/q;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2140
    :goto_2
    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    .line 2141
    invoke-virtual {p0, v8}, Landroid/support/v4/app/q;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2143
    :cond_2
    if-nez v0, :cond_3

    .line 2144
    invoke-direct {p0, v3}, Landroid/support/v4/app/q;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2147
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/q;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onCreateView: id=0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_4
    if-nez v0, :cond_7

    .line 2151
    invoke-static {p2, v6}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2152
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->aB:Z

    .line 2153
    if-eqz v7, :cond_6

    move v0, v7

    :goto_3
    iput v0, v1, Landroid/support/v4/app/Fragment;->aJ:I

    .line 2154
    iput v3, v1, Landroid/support/v4/app/Fragment;->d:I

    .line 2155
    iput-object v8, v1, Landroid/support/v4/app/Fragment;->aK:Ljava/lang/String;

    .line 2156
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->aC:Z

    .line 2157
    iput-object p0, v1, Landroid/support/v4/app/Fragment;->aF:Landroid/support/v4/app/q;

    .line 2158
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->i()V

    .line 2159
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 2182
    :goto_4
    iget v0, p0, Landroid/support/v4/app/q;->bM:I

    if-gtz v0, :cond_a

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->aB:Z

    if-eqz v0, :cond_a

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2183
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2188
    :goto_5
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    if-nez v0, :cond_b

    .line 2189
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v1

    .line 2129
    goto/16 :goto_2

    :cond_6
    move v0, v3

    .line 2153
    goto :goto_3

    .line 2161
    :cond_7
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v1, :cond_8

    .line 2164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2171
    :cond_8
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->aC:Z

    .line 2175
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->aO:Z

    if-nez v1, :cond_9

    .line 2176
    iget-object v1, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->ar:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->i()V

    :cond_9
    move-object v1, v0

    goto/16 :goto_4

    .line 2185
    :cond_a
    invoke-direct {p0, v1}, Landroid/support/v4/app/q;->d(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_5

    .line 2192
    :cond_b
    if-eqz v7, :cond_c

    .line 2193
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 2195
    :cond_c
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2196
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2198
    :cond_d
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aU:Landroid/view/View;

    goto/16 :goto_0

    :cond_e
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public final popBackStackImmediate()Z
    .locals 2

    .prologue
    .line 500
    invoke-direct {p0}, Landroid/support/v4/app/q;->K()V

    .line 501
    invoke-virtual {p0}, Landroid/support/v4/app/q;->L()Z

    .line 502
    iget-object v0, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/q;->b(II)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 621
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v1, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Landroid/support/v4/app/q;->bN:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/f/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 629
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    invoke-static {v1, v0}, Landroid/support/v4/f/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
