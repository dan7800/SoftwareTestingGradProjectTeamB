.class final Landroid/support/v7/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/u;


# instance fields
.field final pe:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p1, p0, Landroid/support/v7/app/A;->pe:Landroid/app/Activity;

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;B)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Landroid/support/v7/app/A;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Landroid/support/v7/app/A;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 594
    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/v7/app/A;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 584
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 586
    :cond_0
    return-void
.end method

.method public final cO()Landroid/content/Context;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/v7/app/A;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/A;->pe:Landroid/app/Activity;

    goto :goto_0
.end method

.method public final cQ()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 560
    invoke-virtual {p0}, Landroid/support/v7/app/A;->cO()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x101030b

    aput v3, v2, v4

    const v3, 0x10102ce

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 562
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 563
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 564
    return-object v1
.end method
