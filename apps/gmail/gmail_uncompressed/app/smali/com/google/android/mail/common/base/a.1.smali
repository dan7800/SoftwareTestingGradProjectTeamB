.class public abstract Lcom/google/android/mail/common/base/a;
.super Lcom/google/android/mail/common/base/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/mail/common/base/A;-><init>()V

    return-void
.end method

.method private static a([CII)[C
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    new-array v0, p2, [C

    .line 202
    if-lez p1, :cond_0

    .line 203
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract g(C)[C
.end method

.method public gF(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 54
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/a;->g(C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/android/mail/common/base/a;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 59
    :cond_0
    return-object p1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final q(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 124
    invoke-static {}, Lcom/google/android/mail/common/base/E;->VZ()[C

    move-result-object v3

    .line 125
    array-length v2, v3

    move v0, v5

    move v1, v5

    .line 131
    :goto_0
    if-ge p2, v6, :cond_3

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/mail/common/base/a;->g(C)[C

    move-result-object v4

    .line 137
    if-eqz v4, :cond_2

    .line 139
    array-length v7, v4

    .line 140
    sub-int v8, p2, v0

    .line 144
    add-int v9, v1, v8

    add-int/2addr v9, v7

    .line 145
    if-ge v2, v9, :cond_0

    .line 146
    sub-int v2, v6, p2

    add-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x20

    .line 147
    invoke-static {v3, v1, v2}, Lcom/google/android/mail/common/base/a;->a([CII)[C

    move-result-object v3

    .line 151
    :cond_0
    if-lez v8, :cond_6

    .line 152
    invoke-virtual {p1, v0, p2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 153
    add-int v0, v1, v8

    .line 157
    :goto_1
    if-lez v7, :cond_1

    .line 158
    invoke-static {v4, v5, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    add-int/2addr v0, v7

    .line 161
    :cond_1
    add-int/lit8 v1, p2, 0x1

    move v10, v1

    move v1, v0

    move v0, v10

    .line 131
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 165
    :cond_3
    sub-int v4, v6, v0

    .line 166
    if-lez v4, :cond_5

    .line 167
    add-int/2addr v4, v1

    .line 168
    if-ge v2, v4, :cond_4

    .line 171
    invoke-static {v3, v1, v4}, Lcom/google/android/mail/common/base/a;->a([CII)[C

    move-result-object v3

    .line 173
    :cond_4
    invoke-virtual {p1, v0, v6, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v1, v4

    .line 176
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
