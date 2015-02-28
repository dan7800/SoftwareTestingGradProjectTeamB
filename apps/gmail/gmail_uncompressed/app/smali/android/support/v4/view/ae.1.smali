.class final Landroid/support/v4/view/ae;
.super Landroid/support/v4/view/am;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0}, Landroid/support/v4/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/T;)V
    .locals 1

    .prologue
    .line 1145
    new-instance v0, Landroid/support/v4/view/ap;

    invoke-direct {v0, p2}, Landroid/support/v4/view/ap;-><init>(Landroid/support/v4/view/T;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1146
    return-void
.end method

.method public final f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1125
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 1126
    return-void
.end method

.method public final v(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1120
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 1121
    return-void
.end method
