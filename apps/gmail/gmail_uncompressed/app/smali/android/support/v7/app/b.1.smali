.class public Landroid/support/v7/app/b;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1330
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/b;->gravity:I

    .line 1331
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/app/b;->gravity:I

    .line 1332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1322
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1319
    iput v2, p0, Landroid/support/v7/app/b;->gravity:I

    .line 1324
    sget-object v0, Landroid/support/v7/a/l;->ri:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1325
    sget v1, Landroid/support/v7/a/l;->rj:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/b;->gravity:I

    .line 1326
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1327
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/b;)V
    .locals 1

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/b;->gravity:I

    .line 1346
    iget v0, p1, Landroid/support/v7/app/b;->gravity:I

    iput v0, p0, Landroid/support/v7/app/b;->gravity:I

    .line 1347
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/b;->gravity:I

    .line 1351
    return-void
.end method
