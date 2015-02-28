.class Landroid/support/v7/widget/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public DJ:I

.field public DK:I

.field public DL:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2230
    invoke-virtual {p0}, Landroid/support/v7/widget/A;->reset()V

    .line 2231
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 2224
    invoke-direct {p0}, Landroid/support/v7/widget/A;-><init>()V

    return-void
.end method


# virtual methods
.method protected I(Z)I
    .locals 2

    .prologue
    .line 2245
    if-nez p1, :cond_0

    .line 2246
    iget v0, p0, Landroid/support/v7/widget/A;->DL:I

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->au(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    const v0, 0x186a0

    .line 2250
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/A;->DJ:I

    iget v1, p0, Landroid/support/v7/widget/A;->DK:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/w;IZ)I
    .locals 2

    .prologue
    .line 2254
    iget v0, p0, Landroid/support/v7/widget/A;->DJ:I

    invoke-static {p1}, Landroid/support/v4/view/ax;->c(Landroid/view/ViewGroup;)I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Landroid/support/v7/widget/w;->d(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/F;Landroid/support/v7/widget/y;I)V
    .locals 2

    .prologue
    .line 2258
    iget v0, p0, Landroid/support/v7/widget/A;->DL:I

    invoke-virtual {p3}, Landroid/support/v7/widget/F;->fE()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/A;->DL:I

    .line 2259
    iget-boolean v0, p4, Landroid/support/v7/widget/y;->De:Z

    .line 2260
    iget-object v1, p3, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    invoke-static {v1, v0}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/w;Z)Landroid/support/v7/widget/w;

    move-result-object v0

    .line 2262
    invoke-static {p1}, Landroid/support/v4/view/ax;->c(Landroid/view/ViewGroup;)I

    move-result v1

    invoke-virtual {v0, p2, p5, v1}, Landroid/support/v7/widget/w;->d(Landroid/view/View;II)I

    move-result v0

    .line 2263
    sub-int v1, p5, v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/A;->r(II)V

    .line 2264
    return-void
.end method

.method protected r(II)V
    .locals 1

    .prologue
    .line 2240
    iget v0, p0, Landroid/support/v7/widget/A;->DJ:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/A;->DJ:I

    .line 2241
    iget v0, p0, Landroid/support/v7/widget/A;->DK:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/A;->DK:I

    .line 2242
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2234
    iput v0, p0, Landroid/support/v7/widget/A;->DJ:I

    .line 2235
    iput v0, p0, Landroid/support/v7/widget/A;->DK:I

    .line 2236
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/A;->DL:I

    .line 2237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds{before="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/A;->DJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/A;->DK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
