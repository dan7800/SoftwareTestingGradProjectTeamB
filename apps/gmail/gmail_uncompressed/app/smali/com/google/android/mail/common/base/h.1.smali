.class final Lcom/google/android/mail/common/base/h;
.super Lcom/google/android/mail/common/base/g;
.source "SourceFile"


# direct methods
.method public constructor <init>([[C)V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/base/g;-><init>([[C)V

    .line 930
    return-void
.end method


# virtual methods
.method protected final g(C)[C
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 934
    iget v0, p0, Lcom/google/android/mail/common/base/h;->coG:I

    if-ge p1, v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/google/android/mail/common/base/h;->coo:[[C

    aget-object v0, v0, p1

    .line 936
    if-eqz v0, :cond_0

    .line 971
    :goto_0
    return-object v0

    .line 942
    :cond_0
    iget-char v0, p0, Lcom/google/android/mail/common/base/h;->coH:C

    if-gt v0, p1, :cond_1

    iget-char v0, p0, Lcom/google/android/mail/common/base/h;->coI:C

    if-gt p1, v0, :cond_1

    .line 943
    const/4 v0, 0x0

    goto :goto_0

    .line 946
    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    .line 949
    new-array v0, v7, [C

    .line 950
    const/16 v1, 0x5c

    aput-char v1, v0, v2

    .line 951
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 952
    ushr-int/lit8 v1, p1, 0x3

    int-to-char v1, v1

    .line 953
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, v1, 0x7

    aget-char v2, v2, v3

    aput-char v2, v0, v5

    .line 954
    ushr-int/lit8 v1, v1, 0x3

    int-to-char v1, v1

    .line 955
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v4

    goto :goto_0

    .line 961
    :cond_2
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 962
    const/16 v1, 0x5c

    aput-char v1, v0, v2

    .line 963
    const/16 v1, 0x75

    aput-char v1, v0, v4

    .line 964
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 965
    ushr-int/lit8 v1, p1, 0x4

    int-to-char v1, v1

    .line 966
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v7

    .line 967
    ushr-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 968
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v6

    .line 969
    ushr-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 970
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VV()[C

    move-result-object v2

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    aput-char v1, v0, v5

    goto :goto_0
.end method
