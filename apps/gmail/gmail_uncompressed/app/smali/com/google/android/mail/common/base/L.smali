.class public abstract Lcom/google/android/mail/common/base/L;
.super Lcom/google/android/mail/common/base/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/mail/common/base/A;-><init>()V

    return-void
.end method

.method private static final a([CII)[C
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    new-array v0, p2, [C

    .line 425
    if-lez p1, :cond_0

    .line 426
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    :cond_0
    return-object v0
.end method

.method private static d(Ljava/lang/CharSequence;II)I
    .locals 5

    .prologue
    .line 390
    if-ge p1, p2, :cond_5

    .line 391
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 392
    const v2, 0xd800

    if-lt v0, v2, :cond_0

    const v2, 0xdfff

    if-le v0, v2, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    const v2, 0xdbff

    if-gt v0, v2, :cond_4

    .line 398
    if-ne v1, p2, :cond_2

    .line 399
    neg-int v0, v0

    goto :goto_0

    .line 402
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 403
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0

    .line 406
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected low surrogate but got char \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected low surrogate character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected c(Ljava/lang/CharSequence;II)I
    .locals 2

    .prologue
    .line 109
    .line 110
    :goto_0
    if-ge p2, p3, :cond_1

    .line 111
    invoke-static {p1, p2, p3}, Lcom/google/android/mail/common/base/L;->d(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 112
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/L;->eV(I)[C

    move-result-object v1

    if-nez v1, :cond_1

    .line 113
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_1
    add-int/2addr p2, v0

    .line 116
    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 117
    :cond_1
    return p2
.end method

.method protected abstract eV(I)[C
.end method

.method public gF(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mail/common/base/L;->c(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 148
    if-ne v1, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/mail/common/base/L;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected final q(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 172
    invoke-static {}, Lcom/google/android/mail/common/base/E;->VZ()[C

    move-result-object v3

    move v2, v4

    move v0, v4

    .line 176
    :goto_0
    if-ge p2, v5, :cond_5

    .line 177
    invoke-static {p1, p2, v5}, Lcom/google/android/mail/common/base/L;->d(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 178
    if-gez v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing high surrogate at end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/mail/common/base/L;->eV(I)[C

    move-result-object v6

    .line 186
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    :goto_1
    add-int/2addr v1, p2

    .line 187
    if-eqz v6, :cond_8

    .line 188
    sub-int v7, p2, v2

    .line 192
    add-int v8, v0, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 193
    array-length v9, v3

    if-ge v9, v8, :cond_1

    .line 194
    sub-int v9, v5, p2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x20

    .line 195
    invoke-static {v3, v0, v8}, Lcom/google/android/mail/common/base/L;->a([CII)[C

    move-result-object v3

    .line 198
    :cond_1
    if-lez v7, :cond_2

    .line 199
    invoke-virtual {p1, v2, p2, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    add-int/2addr v0, v7

    .line 202
    :cond_2
    array-length v2, v6

    if-lez v2, :cond_3

    .line 203
    array-length v2, v6

    invoke-static {v6, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    array-length v2, v6

    add-int/2addr v0, v2

    :cond_3
    move v2, v0

    move v0, v1

    .line 209
    :goto_2
    invoke-virtual {p0, p1, v1, v5}, Lcom/google/android/mail/common/base/L;->c(Ljava/lang/CharSequence;II)I

    move-result p2

    move v10, v0

    move v0, v2

    move v2, v10

    .line 210
    goto :goto_0

    .line 186
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 214
    :cond_5
    sub-int v1, v5, v2

    .line 215
    if-lez v1, :cond_7

    .line 216
    add-int/2addr v1, v0

    .line 217
    array-length v6, v3

    if-ge v6, v1, :cond_6

    .line 218
    invoke-static {v3, v0, v1}, Lcom/google/android/mail/common/base/L;->a([CII)[C

    move-result-object v3

    .line 220
    :cond_6
    invoke-virtual {p1, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    .line 223
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_8
    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_2
.end method
