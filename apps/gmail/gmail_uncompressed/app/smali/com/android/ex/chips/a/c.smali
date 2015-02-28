.class public final Lcom/android/ex/chips/a/c;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/a/b;


# instance fields
.field private final afA:Lcom/android/ex/chips/a/e;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/ae;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 36
    new-instance v0, Lcom/android/ex/chips/a/e;

    invoke-direct {v0, p1}, Lcom/android/ex/chips/a/e;-><init>(Lcom/android/ex/chips/ae;)V

    iput-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    .line 37
    return-void
.end method


# virtual methods
.method public final aP(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/a/e;->aP(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final isSelected()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->isSelected()Z

    move-result v0

    return v0
.end method

.method public final mX()J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->mX()J

    move-result-wide v0

    return-wide v0
.end method

.method public final mY()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->mY()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final mZ()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->mZ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->nd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ne()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->ne()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final nf()Lcom/android/ex/chips/ae;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    return-object v0
.end method

.method public final ng()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->ng()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final setSelected(Z)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/ex/chips/a/c;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/a/e;->setSelected(Z)V

    .line 42
    return-void
.end method
