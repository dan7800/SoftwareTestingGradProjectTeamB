.class final Lorg/owasp/html/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cIb:[C

.field static final cIc:[Ljava/lang/String;

.field private static cId:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 238
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/owasp/html/u;->cIb:[C

    .line 244
    const/16 v0, 0x61

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    move v0, v1

    .line 246
    :goto_0
    if-ge v0, v7, :cond_1

    .line 252
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    .line 253
    sget-object v2, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, "&#34;"

    aput-object v3, v0, v2

    .line 258
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x26

    const-string v3, "&amp;"

    aput-object v3, v0, v2

    .line 260
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, "&#39;"

    aput-object v3, v0, v2

    .line 261
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x2b

    const-string v3, "&#43;"

    aput-object v3, v0, v2

    .line 262
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x3c

    const-string v3, "&lt;"

    aput-object v3, v0, v2

    .line 263
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x3d

    const-string v3, "&#61;"

    aput-object v3, v0, v2

    .line 264
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x3e

    const-string v3, "&gt;"

    aput-object v3, v0, v2

    .line 265
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x40

    const-string v3, "&#64;"

    aput-object v3, v0, v2

    .line 266
    sget-object v0, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    const/16 v2, 0x60

    const-string v3, "&#96;"

    aput-object v3, v0, v2

    .line 273
    new-array v0, v7, [Z

    sput-object v0, Lorg/owasp/html/u;->cId:[Z

    move v0, v1

    .line 275
    :goto_1
    sget-object v2, Lorg/owasp/html/u;->cId:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 276
    sget-object v3, Lorg/owasp/html/u;->cId:[Z

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    const/4 v2, 0x1

    :goto_2
    aput-boolean v2, v3, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 276
    goto :goto_2

    .line 278
    :cond_3
    return-void

    .line 238
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static a(ILjava/lang/Appendable;)V
    .locals 3

    .prologue
    .line 214
    const/16 v0, 0x64

    if-ge p0, v0, :cond_1

    .line 216
    const-string v0, "&#"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 217
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 218
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 223
    :goto_0
    const-string v0, ";"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 236
    :goto_1
    return-void

    .line 220
    :cond_0
    div-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 221
    rem-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 225
    :cond_1
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_3

    const/16 v0, 0x100

    if-ge p0, v0, :cond_2

    const/4 v0, 0x2

    .line 229
    :goto_2
    const-string v1, "&#x"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 230
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 231
    shl-int/lit8 v1, v0, 0x2

    ushr-int v1, p0, v1

    and-int/lit8 v1, v1, 0xf

    .line 232
    sget-object v2, Lorg/owasp/html/u;->cIb:[C

    aget-char v1, v2, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    .line 225
    :cond_2
    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_4

    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    const/high16 v0, 0x100000

    if-ge p0, v0, :cond_5

    const/4 v0, 0x5

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    goto :goto_2

    .line 234
    :cond_6
    const-string v0, ";"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 8

    .prologue
    const v6, 0xfffe

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 168
    :goto_0
    if-ge v1, v2, :cond_5

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 170
    sget-object v4, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 171
    sget-object v4, Lorg/owasp/html/u;->cIc:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 172
    if-eqz v3, :cond_0

    .line 173
    invoke-interface {p1, p0, v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 174
    add-int/lit8 v0, v1, 0x1

    :cond_0
    move v7, v1

    move v1, v0

    move v0, v7

    .line 168
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_0

    .line 176
    :cond_1
    const v4, 0xd800

    if-gt v4, v3, :cond_4

    .line 177
    const v4, 0xdfff

    if-gt v3, v4, :cond_3

    .line 179
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 186
    invoke-interface {p1, p0, v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 187
    invoke-static {v3, p1}, Lorg/owasp/html/u;->a(ILjava/lang/Appendable;)V

    .line 188
    add-int/lit8 v0, v1, 0x1

    .line 189
    add-int/lit8 v1, v0, 0x1

    .line 190
    goto :goto_1

    .line 191
    :cond_2
    invoke-interface {p1, p0, v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 193
    add-int/lit8 v0, v1, 0x1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    .line 195
    :cond_3
    const v4, 0xff00

    if-gt v4, v3, :cond_4

    .line 196
    invoke-interface {p1, p0, v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 197
    add-int/lit8 v0, v1, 0x1

    .line 200
    and-int v4, v3, v6

    if-eq v4, v6, :cond_4

    .line 203
    invoke-static {v3, p1}, Lorg/owasp/html/u;->a(ILjava/lang/Appendable;)V

    :cond_4
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    .line 208
    :cond_5
    invoke-interface {p1, p0, v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 209
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;I)V
    .locals 7

    .prologue
    const v6, 0xfffe

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move v0, p1

    move v1, p1

    :goto_0
    if-ge v0, v3, :cond_4

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 102
    const/16 v2, 0x20

    if-ge v4, v2, :cond_1

    .line 103
    sget-object v2, Lorg/owasp/html/u;->cId:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    .line 100
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const v2, 0xd800

    if-gt v2, v4, :cond_3

    .line 107
    const v2, 0xdfff

    if-gt v4, v2, :cond_2

    .line 108
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 109
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 110
    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 112
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_2
    and-int v2, v4, v6

    if-eq v2, v6, :cond_0

    .line 118
    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v1, v2

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    return-void
.end method

.method static e(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/owasp/html/u;->b(Ljava/lang/StringBuilder;I)V

    .line 95
    return-void
.end method

.method static iq(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x26

    .line 44
    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 45
    invoke-static {p0}, Lorg/owasp/html/u;->is(Ljava/lang/String;)I

    move-result v0

    .line 46
    and-int v2, v1, v0

    if-gez v2, :cond_0

    .line 71
    :goto_0
    return-object p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    .line 54
    :goto_1
    if-ltz v2, :cond_1

    .line 55
    invoke-static {p0, v2, v5}, Lorg/owasp/html/D;->k(Ljava/lang/String;II)J

    move-result-wide v8

    .line 56
    const/16 v4, 0x20

    ushr-long v10, v8, v4

    long-to-int v4, v10

    .line 57
    long-to-int v7, v8

    .line 58
    invoke-virtual {v6, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0, v12, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v6, p0, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 65
    if-gez v1, :cond_2

    :goto_2
    invoke-static {v6, v0}, Lorg/owasp/html/u;->b(Ljava/lang/StringBuilder;I)V

    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_2
    if-gez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2
.end method

.method static ir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    invoke-static {p0}, Lorg/owasp/html/u;->is(Ljava/lang/String;)I

    move-result v0

    .line 81
    if-gez v0, :cond_0

    .line 85
    :goto_0
    return-object p0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v1, v0}, Lorg/owasp/html/u;->b(Ljava/lang/StringBuilder;I)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static is(Ljava/lang/String;)I
    .locals 5

    .prologue
    const v4, 0xfffe

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 134
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 136
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 137
    sget-object v3, Lorg/owasp/html/u;->cId:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_2

    .line 152
    :cond_0
    :goto_1
    return v0

    .line 140
    :cond_1
    const v3, 0xd800

    if-gt v3, v2, :cond_2

    .line 141
    const v3, 0xdfff

    if-gt v2, v3, :cond_3

    .line 142
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_3
    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 152
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method
