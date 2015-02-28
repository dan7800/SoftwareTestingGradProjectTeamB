.class public Landroid/support/v7/widget/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Ee:Landroid/support/v7/widget/F;


# instance fields
.field final Db:Landroid/support/v7/widget/B;

.field final Ef:Z

.field final Eg:Landroid/support/v7/widget/w;

.field final weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2392
    invoke-static {}, Landroid/support/v7/widget/GridLayout;->fo()Landroid/support/v7/widget/F;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    return-void
.end method

.method private constructor <init>(ZIILandroid/support/v7/widget/w;F)V
    .locals 2

    .prologue
    .line 2408
    new-instance v0, Landroid/support/v7/widget/B;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/support/v7/widget/B;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/support/v7/widget/F;-><init>(ZLandroid/support/v7/widget/B;Landroid/support/v7/widget/w;F)V

    .line 2409
    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/support/v7/widget/w;FB)V
    .locals 0

    .prologue
    .line 2391
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/F;-><init>(ZIILandroid/support/v7/widget/w;F)V

    return-void
.end method

.method private constructor <init>(ZLandroid/support/v7/widget/B;Landroid/support/v7/widget/w;F)V
    .locals 0

    .prologue
    .line 2400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2401
    iput-boolean p1, p0, Landroid/support/v7/widget/F;->Ef:Z

    .line 2402
    iput-object p2, p0, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    .line 2403
    iput-object p3, p0, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    .line 2404
    iput p4, p0, Landroid/support/v7/widget/F;->weight:F

    .line 2405
    return-void
.end method


# virtual methods
.method final c(Landroid/support/v7/widget/B;)Landroid/support/v7/widget/F;
    .locals 4

    .prologue
    .line 2412
    new-instance v0, Landroid/support/v7/widget/F;

    iget-boolean v1, p0, Landroid/support/v7/widget/F;->Ef:Z

    iget-object v2, p0, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    iget v3, p0, Landroid/support/v7/widget/F;->weight:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/support/v7/widget/F;-><init>(ZLandroid/support/v7/widget/B;Landroid/support/v7/widget/w;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2435
    if-ne p0, p1, :cond_1

    .line 2452
    :cond_0
    :goto_0
    return v0

    .line 2438
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 2439
    goto :goto_0

    .line 2442
    :cond_3
    check-cast p1, Landroid/support/v7/widget/F;

    .line 2444
    iget-object v2, p0, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    iget-object v3, p1, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2445
    goto :goto_0

    .line 2448
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    iget-object v3, p1, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/B;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2449
    goto :goto_0
.end method

.method final fE()I
    .locals 2

    .prologue
    .line 2420
    iget-object v0, p0, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->CM:Landroid/support/v7/widget/w;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/F;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2457
    iget-object v0, p0, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    invoke-virtual {v0}, Landroid/support/v7/widget/B;->hashCode()I

    move-result v0

    .line 2458
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2459
    return v0
.end method
