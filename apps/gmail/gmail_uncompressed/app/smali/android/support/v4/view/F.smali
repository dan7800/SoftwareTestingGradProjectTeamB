.class public final Landroid/support/v4/view/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final hY:Landroid/support/v4/view/G;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v0, Landroid/support/v4/view/I;

    invoke-direct {v0}, Landroid/support/v4/view/I;-><init>()V

    sput-object v0, Landroid/support/v4/view/F;->hY:Landroid/support/v4/view/G;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/support/v4/view/H;

    invoke-direct {v0}, Landroid/support/v4/view/H;-><init>()V

    sput-object v0, Landroid/support/v4/view/F;->hY:Landroid/support/v4/view/G;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .prologue
    .line 147
    sget-object v0, Landroid/support/v4/view/F;->hY:Landroid/support/v4/view/G;

    invoke-interface {v0, p0}, Landroid/support/v4/view/G;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/view/F;->hY:Landroid/support/v4/view/G;

    invoke-interface {v0, p0}, Landroid/support/v4/view/G;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method
