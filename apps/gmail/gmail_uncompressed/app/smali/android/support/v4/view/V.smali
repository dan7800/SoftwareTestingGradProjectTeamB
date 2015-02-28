.class public final Landroid/support/v4/view/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ic:Landroid/support/v4/view/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Landroid/support/v4/view/X;

    invoke-direct {v0, v2}, Landroid/support/v4/view/X;-><init>(B)V

    sput-object v0, Landroid/support/v4/view/V;->ic:Landroid/support/v4/view/Y;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/support/v4/view/W;

    invoke-direct {v0, v2}, Landroid/support/v4/view/W;-><init>(B)V

    sput-object v0, Landroid/support/v4/view/V;->ic:Landroid/support/v4/view/Y;

    goto :goto_0
.end method

.method public static g(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/support/v4/view/V;->ic:Landroid/support/v4/view/Y;

    invoke-interface {v0, p0}, Landroid/support/v4/view/Y;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
