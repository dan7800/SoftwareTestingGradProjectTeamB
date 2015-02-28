.class final Landroid/support/v4/view/M;
.super Landroid/support/v4/view/L;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/support/v4/view/L;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public final g(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method
