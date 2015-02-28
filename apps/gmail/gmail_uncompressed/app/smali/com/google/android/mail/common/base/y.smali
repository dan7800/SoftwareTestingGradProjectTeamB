.class public final Lcom/google/android/mail/common/base/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cpi:[I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    const/16 v0, 0x800

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/mail/common/base/y;->cpi:[I

    return-void
.end method


# virtual methods
.method final j(C)V
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/mail/common/base/y;->cpi:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 707
    return-void
.end method
