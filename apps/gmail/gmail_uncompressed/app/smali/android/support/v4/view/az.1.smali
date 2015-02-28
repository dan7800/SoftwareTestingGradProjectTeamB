.class Landroid/support/v4/view/az;
.super Landroid/support/v4/view/aD;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v4/view/aD;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 91
    return-void
.end method
