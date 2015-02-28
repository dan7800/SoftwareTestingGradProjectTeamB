.class final Landroid/support/v4/view/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/Y;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/view/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    check-cast p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isQuickScaleEnabled()Z

    move-result v0

    return v0
.end method
