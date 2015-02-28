.class public final Lcom/android/mail/ui/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NONE:I

.field public static aII:I

.field public static aIJ:I

.field public static aIK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/mail/ui/bj;->NONE:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/android/mail/ui/bj;->aII:I

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/android/mail/ui/bj;->aIJ:I

    .line 49
    const/4 v0, 0x3

    sput v0, Lcom/android/mail/ui/bj;->aIK:I

    return-void
.end method

.method public static cV(I)Z
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/mail/ui/bj;->aII:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cW(I)Z
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/android/mail/ui/bj;->aIK:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
