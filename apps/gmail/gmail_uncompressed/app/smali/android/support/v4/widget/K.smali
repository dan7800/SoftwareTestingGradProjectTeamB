.class public final Landroid/support/v4/widget/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mw:Ljava/lang/Object;

.field mx:Landroid/support/v4/widget/L;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 264
    new-instance v0, Landroid/support/v4/widget/O;

    invoke-direct {v0}, Landroid/support/v4/widget/O;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    .line 270
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/L;->b(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/K;->mw:Ljava/lang/Object;

    .line 271
    return-void

    .line 265
    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 266
    new-instance v0, Landroid/support/v4/widget/N;

    invoke-direct {v0}, Landroid/support/v4/widget/N;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Landroid/support/v4/widget/M;

    invoke-direct {v0}, Landroid/support/v4/widget/M;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/widget/K;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 256
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/K;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Landroid/support/v4/widget/K;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/K;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/support/v4/widget/K;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/widget/K;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/K;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final T(I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    iget-object v1, p0, Landroid/support/v4/widget/K;->mw:Ljava/lang/Object;

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v3, v2

    move v4, v2

    move v5, p1

    move v6, v2

    move v7, v2

    invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/L;->a(Ljava/lang/Object;IIIIIIII)V

    .line 394
    return-void
.end method

.method public final abortAnimation()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    iget-object v1, p0, Landroid/support/v4/widget/K;->mw:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/L;->J(Ljava/lang/Object;)V

    .line 431
    return-void
.end method

.method public final getCurrX()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    iget-object v1, p0, Landroid/support/v4/widget/K;->mw:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/L;->G(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    iget-object v1, p0, Landroid/support/v4/widget/K;->mw:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/L;->H(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/widget/K;->mx:Landroid/support/v4/widget/L;

    iget-object v1, p0, Landroid/support/v4/widget/K;->mw:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/L;->L(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
