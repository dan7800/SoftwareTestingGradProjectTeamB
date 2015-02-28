.class public abstract Lcom/google/api/client/util/a/f;
.super Lcom/google/api/client/util/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/api/client/util/a/b;-><init>()V

    return-void
.end method

.method private static a([CII)[C
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    new-array v0, p2, [C

    .line 254
    if-lez p1, :cond_0

    .line 255
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract c(Ljava/lang/CharSequence;II)I
.end method

.method protected abstract eV(I)[C
.end method

.method protected final q(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 135
    invoke-static {}, Lcom/google/api/client/util/a/d;->VZ()[C

    move-result-object v3

    move v2, v4

    move v0, v4

    .line 139
    :goto_0
    if-ge p2, v5, :cond_b

    .line 140
    if-ge p2, v5, :cond_5

    add-int/lit8 v6, p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v7, 0xd800

    if-lt v1, v7, :cond_0

    const v7, 0xdfff

    if-le v1, v7, :cond_1

    .line 141
    :cond_0
    :goto_1
    if-gez v1, :cond_6

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing high surrogate at end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    const v7, 0xdbff

    if-gt v1, v7, :cond_4

    if-ne v6, v5, :cond_2

    neg-int v1, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v1, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected low surrogate but got char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected low surrogate character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/api/client/util/a/f;->eV(I)[C

    move-result-object v6

    .line 148
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    :goto_2
    add-int/2addr v1, p2

    .line 149
    if-eqz v6, :cond_e

    .line 150
    sub-int v7, p2, v2

    .line 154
    add-int v8, v0, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 155
    array-length v9, v3

    if-ge v9, v8, :cond_7

    .line 156
    add-int/2addr v8, v5

    sub-int/2addr v8, p2

    add-int/lit8 v8, v8, 0x20

    .line 157
    invoke-static {v3, v0, v8}, Lcom/google/api/client/util/a/f;->a([CII)[C

    move-result-object v3

    .line 160
    :cond_7
    if-lez v7, :cond_8

    .line 161
    invoke-virtual {p1, v2, p2, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 162
    add-int/2addr v0, v7

    .line 164
    :cond_8
    array-length v2, v6

    if-lez v2, :cond_9

    .line 165
    array-length v2, v6

    invoke-static {v6, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v2, v6

    add-int/2addr v0, v2

    :cond_9
    move v2, v0

    move v0, v1

    .line 171
    :goto_3
    invoke-virtual {p0, p1, v1, v5}, Lcom/google/api/client/util/a/f;->c(Ljava/lang/CharSequence;II)I

    move-result p2

    move v10, v0

    move v0, v2

    move v2, v10

    .line 172
    goto/16 :goto_0

    .line 148
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 176
    :cond_b
    sub-int v1, v5, v2

    .line 177
    if-lez v1, :cond_d

    .line 178
    add-int/2addr v1, v0

    .line 179
    array-length v6, v3

    if-ge v6, v1, :cond_c

    .line 180
    invoke-static {v3, v0, v1}, Lcom/google/api/client/util/a/f;->a([CII)[C

    move-result-object v3

    .line 182
    :cond_c
    invoke-virtual {p1, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    .line 185
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_e
    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_3
.end method
