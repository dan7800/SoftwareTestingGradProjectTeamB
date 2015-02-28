.class final Lcom/google/android/mail/common/base/f;
.super Lcom/google/android/mail/common/base/a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/google/android/mail/common/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final g(C)[C
    .locals 5

    .prologue
    .line 773
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 787
    :goto_0
    return-object v0

    .line 777
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 778
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 779
    ushr-int/lit8 v1, p1, 0x4

    int-to-char v1, v1

    .line 780
    const/4 v2, 0x4

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v3

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 781
    ushr-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 782
    const/4 v2, 0x3

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v3

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 783
    ushr-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 784
    const/4 v2, 0x2

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v3

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    .line 785
    const/4 v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 786
    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    goto :goto_0
.end method
