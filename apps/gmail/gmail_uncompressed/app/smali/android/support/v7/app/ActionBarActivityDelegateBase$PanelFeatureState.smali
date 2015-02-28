.class final Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mT:Z

.field oI:I

.field oJ:Landroid/view/ViewGroup;

.field oK:Landroid/view/View;

.field oL:Landroid/support/v7/internal/view/menu/i;

.field oM:Landroid/support/v7/internal/view/menu/g;

.field oN:Landroid/content/Context;

.field oO:Z

.field oP:Z

.field public oQ:Z

.field oR:Z

.field oS:Z

.field oT:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1433
    iput p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oI:I

    .line 1435
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oR:Z

    .line 1436
    return-void
.end method


# virtual methods
.method final d(Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oL:Landroid/support/v7/internal/view/menu/i;

    if-ne p1, v0, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oL:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_2

    .line 1483
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oL:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oM:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/x;)V

    .line 1485
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oL:Landroid/support/v7/internal/view/menu/i;

    .line 1486
    if-eqz p1, :cond_0

    .line 1487
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oM:Landroid/support/v7/internal/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->oM:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    goto :goto_0
.end method
