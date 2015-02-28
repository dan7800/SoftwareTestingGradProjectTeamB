.class final Landroid/support/v7/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final DM:I

.field public final max:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 2307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2308
    iput p1, p0, Landroid/support/v7/widget/B;->DM:I

    .line 2309
    iput p2, p0, Landroid/support/v7/widget/B;->max:I

    .line 2310
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2332
    if-ne p0, p1, :cond_1

    .line 2349
    :cond_0
    :goto_0
    return v0

    .line 2335
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 2336
    goto :goto_0

    .line 2339
    :cond_3
    check-cast p1, Landroid/support/v7/widget/B;

    .line 2341
    iget v2, p0, Landroid/support/v7/widget/B;->max:I

    iget v3, p1, Landroid/support/v7/widget/B;->max:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 2342
    goto :goto_0

    .line 2345
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/B;->DM:I

    iget v3, p1, Landroid/support/v7/widget/B;->DM:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 2346
    goto :goto_0
.end method

.method final fD()Landroid/support/v7/widget/B;
    .locals 3

    .prologue
    .line 2317
    new-instance v0, Landroid/support/v7/widget/B;

    iget v1, p0, Landroid/support/v7/widget/B;->max:I

    iget v2, p0, Landroid/support/v7/widget/B;->DM:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/B;-><init>(II)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 2354
    iget v0, p0, Landroid/support/v7/widget/B;->DM:I

    .line 2355
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/B;->max:I

    add-int/2addr v0, v1

    .line 2356
    return v0
.end method

.method final size()I
    .locals 2

    .prologue
    .line 2313
    iget v0, p0, Landroid/support/v7/widget/B;->max:I

    iget v1, p0, Landroid/support/v7/widget/B;->DM:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/B;->DM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/B;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
