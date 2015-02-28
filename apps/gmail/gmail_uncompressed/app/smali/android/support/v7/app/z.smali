.class final Landroid/support/v7/app/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/u;


# instance fields
.field final pe:Landroid/app/Activity;

.field pf:Landroid/support/v7/app/D;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    .line 513
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;B)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0, p1}, Landroid/support/v7/app/z;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v7/app/z;->pf:Landroid/support/v7/app/D;

    iget-object v1, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/C;->a(Landroid/support/v7/app/D;Landroid/app/Activity;I)Landroid/support/v7/app/D;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/z;->pf:Landroid/support/v7/app/D;

    .line 544
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 535
    iget-object v0, p0, Landroid/support/v7/app/z;->pf:Landroid/support/v7/app/D;

    iget-object v0, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroid/support/v7/app/C;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/D;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/z;->pf:Landroid/support/v7/app/D;

    .line 537
    iget-object v0, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 538
    return-void
.end method

.method public final cO()Landroid/content/Context;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    goto :goto_0
.end method

.method public final cQ()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/v7/app/z;->pe:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v7/app/C;->d(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
