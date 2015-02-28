.class public final Landroid/support/v4/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gm:Landroid/support/v4/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/support/v4/e/g;

    invoke-direct {v0}, Landroid/support/v4/e/g;-><init>()V

    sput-object v0, Landroid/support/v4/e/d;->gm:Landroid/support/v4/e/e;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/support/v4/e/f;

    invoke-direct {v0}, Landroid/support/v4/e/f;-><init>()V

    sput-object v0, Landroid/support/v4/e/d;->gm:Landroid/support/v4/e/e;

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/support/v4/e/d;->gm:Landroid/support/v4/e/e;

    invoke-interface {v0, p0}, Landroid/support/v4/e/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/support/v4/e/d;->gm:Landroid/support/v4/e/e;

    invoke-interface {v0, p0}, Landroid/support/v4/e/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
