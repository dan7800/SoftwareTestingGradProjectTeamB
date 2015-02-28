.class public final Landroid/support/v4/view/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final il:Landroid/support/v4/view/aB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 130
    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->il:Landroid/support/v4/view/aB;

    .line 140
    :goto_0
    return-void

    .line 131
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 132
    new-instance v0, Landroid/support/v4/view/aC;

    invoke-direct {v0}, Landroid/support/v4/view/aC;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->il:Landroid/support/v4/view/aB;

    goto :goto_0

    .line 133
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 134
    new-instance v0, Landroid/support/v4/view/aA;

    invoke-direct {v0}, Landroid/support/v4/view/aA;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->il:Landroid/support/v4/view/aB;

    goto :goto_0

    .line 135
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 136
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0}, Landroid/support/v4/view/az;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->il:Landroid/support/v4/view/aB;

    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Landroid/support/v4/view/aD;

    invoke-direct {v0}, Landroid/support/v4/view/aD;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->il:Landroid/support/v4/view/aB;

    goto :goto_0
.end method

.method public static b(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Landroid/support/v4/view/ax;->il:Landroid/support/v4/view/aB;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/aB;->b(Landroid/view/ViewGroup;Z)V

    .line 187
    return-void
.end method

.method public static c(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 202
    sget-object v0, Landroid/support/v4/view/ax;->il:Landroid/support/v4/view/aB;

    invoke-interface {v0, p0}, Landroid/support/v4/view/aB;->c(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method
