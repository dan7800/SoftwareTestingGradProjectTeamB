.class final Landroid/support/v4/view/bo;
.super Landroid/support/v4/view/bn;
.source "SourceFile"


# instance fields
.field private final jO:Landroid/view/WindowInsets;


# direct methods
.method constructor <init>(Landroid/view/WindowInsets;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/bn;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/support/v4/view/bo;->jO:Landroid/view/WindowInsets;

    .line 28
    return-void
.end method


# virtual methods
.method public final b(IIII)Landroid/support/v4/view/bn;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/support/v4/view/bo;

    iget-object v1, p0, Landroid/support/v4/view/bo;->jO:Landroid/view/WindowInsets;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/bo;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method final bq()Landroid/view/WindowInsets;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/view/bo;->jO:Landroid/view/WindowInsets;

    return-object v0
.end method

.method public final getSystemWindowInsetBottom()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/view/bo;->jO:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public final getSystemWindowInsetLeft()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/v4/view/bo;->jO:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public final getSystemWindowInsetRight()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/view/bo;->jO:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public final getSystemWindowInsetTop()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/v4/view/bo;->jO:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method
