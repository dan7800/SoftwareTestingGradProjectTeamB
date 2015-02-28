.class final Landroid/support/v7/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field final synthetic oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;B)V
    .locals 0

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Landroid/support/v7/app/r;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1336
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/i;->dZ()Landroid/support/v7/internal/view/menu/i;

    move-result-object v2

    .line 1337
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1338
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v3, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v3

    .line 1339
    if-eqz v3, :cond_1

    .line 1340
    if-eqz v0, :cond_3

    .line 1341
    iget-object v0, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget v4, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oI:I

    invoke-static {v0, v4, v3, v2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase;ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1342
    iget-object v0, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-static {v0, v3, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1350
    :cond_1
    :goto_1
    return-void

    .line 1337
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1346
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->nX:Landroid/support/v7/app/g;

    invoke-virtual {v0}, Landroid/support/v7/app/g;->closeOptionsMenu()V

    .line 1347
    iget-object v0, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-static {v0, v3, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public final c(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 1354
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-boolean v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->oa:Z

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->cP()Landroid/support/v7/internal/a/i;

    move-result-object v0

    .line 1356
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/r;->oG:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1357
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/support/v7/internal/a/i;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1360
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
