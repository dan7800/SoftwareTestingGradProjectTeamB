.class final Landroid/support/v4/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private kA:I

.field private kB:I

.field private kC:J

.field private kD:F

.field private kE:I

.field private ku:I

.field private kv:I

.field private kw:F

.field private kx:F

.field private ky:J

.field private kz:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v4/widget/b;->ky:J

    .line 745
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/b;->kC:J

    .line 746
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/b;->kz:J

    .line 747
    iput v2, p0, Landroid/support/v4/widget/b;->kA:I

    .line 748
    iput v2, p0, Landroid/support/v4/widget/b;->kB:I

    .line 749
    return-void
.end method

.method private c(J)F
    .locals 5

    .prologue
    .line 787
    iget-wide v0, p0, Landroid/support/v4/widget/b;->ky:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 788
    const/4 v0, 0x0

    .line 794
    :goto_0
    return v0

    .line 789
    :cond_0
    iget-wide v0, p0, Landroid/support/v4/widget/b;->kC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/support/v4/widget/b;->kC:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 790
    :cond_1
    iget-wide v0, p0, Landroid/support/v4/widget/b;->ky:J

    sub-long v0, p1, v0

    .line 791
    const/high16 v2, 0x3f000000    # 0.5f

    long-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/b;->ku:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/support/v4/widget/a;->e(F)F

    move-result v0

    mul-float/2addr v0, v2

    goto :goto_0

    .line 793
    :cond_2
    iget-wide v0, p0, Landroid/support/v4/widget/b;->kC:J

    sub-long v0, p1, v0

    .line 794
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/support/v4/widget/b;->kD:F

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/support/v4/widget/b;->kD:F

    long-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/b;->kE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/support/v4/widget/a;->e(F)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final J(I)V
    .locals 1

    .prologue
    .line 752
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/support/v4/widget/b;->ku:I

    .line 753
    return-void
.end method

.method public final K(I)V
    .locals 1

    .prologue
    .line 756
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/support/v4/widget/b;->kv:I

    .line 757
    return-void
.end method

.method public final bA()V
    .locals 4

    .prologue
    .line 775
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 776
    iget-wide v2, p0, Landroid/support/v4/widget/b;->ky:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Landroid/support/v4/widget/b;->kv:I

    invoke-static {v2, v3}, Landroid/support/v4/widget/a;->e(II)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/b;->kE:I

    .line 777
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/b;->c(J)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/b;->kD:F

    .line 778
    iput-wide v0, p0, Landroid/support/v4/widget/b;->kC:J

    .line 779
    return-void
.end method

.method public final bB()V
    .locals 6

    .prologue
    .line 818
    iget-wide v0, p0, Landroid/support/v4/widget/b;->kz:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 823
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/b;->c(J)F

    move-result v2

    .line 824
    const/high16 v3, -0x3f800000    # -4.0f

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 825
    iget-wide v4, p0, Landroid/support/v4/widget/b;->kz:J

    sub-long v4, v0, v4

    .line 827
    iput-wide v0, p0, Landroid/support/v4/widget/b;->kz:J

    .line 828
    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroid/support/v4/widget/b;->kw:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/b;->kA:I

    .line 829
    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroid/support/v4/widget/b;->kx:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/b;->kB:I

    .line 830
    return-void
.end method

.method public final bC()I
    .locals 2

    .prologue
    .line 844
    iget v0, p0, Landroid/support/v4/widget/b;->kw:F

    iget v1, p0, Landroid/support/v4/widget/b;->kw:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final bD()I
    .locals 2

    .prologue
    .line 848
    iget v0, p0, Landroid/support/v4/widget/b;->kx:F

    iget v1, p0, Landroid/support/v4/widget/b;->kx:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final bE()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Landroid/support/v4/widget/b;->kA:I

    return v0
.end method

.method public final bF()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Landroid/support/v4/widget/b;->kB:I

    return v0
.end method

.method public final c(FF)V
    .locals 0

    .prologue
    .line 839
    iput p1, p0, Landroid/support/v4/widget/b;->kw:F

    .line 840
    iput p2, p0, Landroid/support/v4/widget/b;->kx:F

    .line 841
    return-void
.end method

.method public final isFinished()Z
    .locals 6

    .prologue
    .line 782
    iget-wide v0, p0, Landroid/support/v4/widget/b;->kC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/b;->kC:J

    iget v4, p0, Landroid/support/v4/widget/b;->kE:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 763
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/b;->ky:J

    .line 764
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/b;->kC:J

    .line 765
    iget-wide v0, p0, Landroid/support/v4/widget/b;->ky:J

    iput-wide v0, p0, Landroid/support/v4/widget/b;->kz:J

    .line 766
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/v4/widget/b;->kD:F

    .line 767
    iput v2, p0, Landroid/support/v4/widget/b;->kA:I

    .line 768
    iput v2, p0, Landroid/support/v4/widget/b;->kB:I

    .line 769
    return-void
.end method
