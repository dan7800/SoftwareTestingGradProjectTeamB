.class final Lcom/google/android/mail/common/base/i;
.super Lcom/google/android/mail/common/base/g;
.source "SourceFile"


# direct methods
.method public constructor <init>([[C)V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/base/g;-><init>([[C)V

    .line 984
    return-void
.end method


# virtual methods
.method protected final g(C)[C
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 988
    iget v0, p0, Lcom/google/android/mail/common/base/i;->coG:I

    if-ge p1, v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/android/mail/common/base/i;->coo:[[C

    aget-object v0, v0, p1

    .line 990
    if-eqz v0, :cond_0

    .line 1022
    :goto_0
    return-object v0

    .line 996
    :cond_0
    iget-char v0, p0, Lcom/google/android/mail/common/base/i;->coH:C

    if-gt v0, p1, :cond_1

    iget-char v0, p0, Lcom/google/android/mail/common/base/i;->coI:C

    if-gt p1, v0, :cond_1

    .line 997
    const/4 v0, 0x0

    goto :goto_0

    .line 1001
    :cond_1
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    .line 1002
    new-array v0, v8, [C

    .line 1003
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v7

    .line 1004
    ushr-int/lit8 v1, p1, 0x4

    int-to-char v1, v1

    .line 1005
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    .line 1006
    const/16 v1, 0x78

    aput-char v1, v0, v5

    .line 1007
    const/16 v1, 0x5c

    aput-char v1, v0, v4

    goto :goto_0

    .line 1012
    :cond_2
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 1013
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1014
    ushr-int/lit8 v1, p1, 0x4

    int-to-char v1, v1

    .line 1015
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v8

    .line 1016
    ushr-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 1017
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v7

    .line 1018
    ushr-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 1019
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    .line 1020
    const/16 v1, 0x75

    aput-char v1, v0, v5

    .line 1021
    const/16 v1, 0x5c

    aput-char v1, v0, v4

    goto :goto_0
.end method