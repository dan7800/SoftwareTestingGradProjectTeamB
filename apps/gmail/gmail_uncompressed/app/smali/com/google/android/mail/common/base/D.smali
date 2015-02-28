.class public final Lcom/google/android/mail/common/base/D;
.super Lcom/google/android/mail/common/base/L;
.source "SourceFile"


# static fields
.field private static final cpm:[C

.field private static final cpn:[C


# instance fields
.field private final cpo:Z

.field private final cpp:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/mail/common/base/D;->cpm:[C

    .line 92
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/D;->cpn:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/mail/common/base/L;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    iput-boolean p2, p0, Lcom/google/android/mail/common/base/D;->cpo:Z

    .line 138
    invoke-static {p1}, Lcom/google/android/mail/common/base/D;->gG(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/base/D;->cpp:[Z

    .line 139
    return-void
.end method

.method private static gG(Ljava/lang/String;)[Z
    .locals 8

    .prologue
    const/16 v3, 0x7a

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 149
    array-length v5, v4

    move v1, v0

    move v2, v3

    :goto_0
    if-ge v1, v5, :cond_0

    aget-char v6, v4, v1

    .line 150
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    add-int/lit8 v1, v2, 0x1

    new-array v2, v1, [Z

    .line 153
    const/16 v1, 0x30

    :goto_1
    const/16 v5, 0x39

    if-gt v1, v5, :cond_1

    .line 154
    aput-boolean v7, v2, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v5, 0x5a

    if-gt v1, v5, :cond_2

    .line 157
    aput-boolean v7, v2, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    :cond_2
    const/16 v1, 0x61

    :goto_3
    if-gt v1, v3, :cond_3

    .line 160
    aput-boolean v7, v2, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 162
    :cond_3
    array-length v1, v4

    :goto_4
    if-ge v0, v1, :cond_4

    aget-char v3, v4, v0

    .line 163
    aput-boolean v7, v2, v3

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 165
    :cond_4
    return-object v2
.end method


# virtual methods
.method protected final c(Ljava/lang/CharSequence;II)I
    .locals 2

    .prologue
    .line 175
    :goto_0
    if-ge p2, p3, :cond_0

    .line 176
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/android/mail/common/base/D;->cpp:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/mail/common/base/D;->cpp:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_0

    .line 178
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return p2
.end method

.method protected final eV(I)[C
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x25

    .line 209
    iget-object v0, p0, Lcom/google/android/mail/common/base/D;->cpp:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/base/D;->cpp:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/mail/common/base/D;->cpo:Z

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lcom/google/android/mail/common/base/D;->cpm:[C

    goto :goto_0

    .line 213
    :cond_1
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_2

    .line 216
    new-array v0, v3, [C

    .line 217
    aput-char v2, v0, v1

    .line 218
    sget-object v1, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 219
    sget-object v1, Lcom/google/android/mail/common/base/D;->cpn:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto :goto_0

    .line 221
    :cond_2
    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_3

    .line 224
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 225
    aput-char v2, v0, v1

    .line 226
    aput-char v2, v0, v3

    .line 227
    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 228
    ushr-int/lit8 v1, p1, 0x4

    .line 229
    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 230
    ushr-int/lit8 v1, v1, 0x2

    .line 231
    sget-object v2, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v6

    .line 232
    ushr-int/lit8 v1, v1, 0x4

    .line 233
    sget-object v2, Lcom/google/android/mail/common/base/D;->cpn:[C

    or-int/lit8 v1, v1, 0xc

    aget-char v1, v2, v1

    aput-char v1, v0, v5

    goto :goto_0

    .line 235
    :cond_3
    const v0, 0xffff

    if-gt p1, v0, :cond_4

    .line 238
    const/16 v0, 0x9

    new-array v0, v0, [C

    .line 239
    aput-char v2, v0, v1

    .line 240
    const/16 v1, 0x45

    aput-char v1, v0, v5

    .line 241
    aput-char v2, v0, v3

    .line 242
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 243
    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 244
    ushr-int/lit8 v1, p1, 0x4

    .line 245
    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 246
    ushr-int/lit8 v1, v1, 0x2

    .line 247
    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 248
    ushr-int/lit8 v1, v1, 0x4

    .line 249
    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 250
    ushr-int/lit8 v1, v1, 0x2

    .line 251
    sget-object v2, Lcom/google/android/mail/common/base/D;->cpn:[C

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    .line 253
    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 254
    const/16 v0, 0xc

    new-array v0, v0, [C

    .line 257
    aput-char v2, v0, v1

    .line 258
    const/16 v1, 0x46

    aput-char v1, v0, v5

    .line 259
    aput-char v2, v0, v3

    .line 260
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 261
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 262
    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 263
    ushr-int/lit8 v1, p1, 0x4

    .line 264
    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 265
    ushr-int/lit8 v1, v1, 0x2

    .line 266
    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 267
    ushr-int/lit8 v1, v1, 0x4

    .line 268
    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 269
    ushr-int/lit8 v1, v1, 0x2

    .line 270
    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 271
    ushr-int/lit8 v1, v1, 0x4

    .line 272
    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 273
    ushr-int/lit8 v1, v1, 0x2

    .line 274
    sget-object v2, Lcom/google/android/mail/common/base/D;->cpn:[C

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid unicode character value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final gF(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 193
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 195
    iget-object v3, p0, Lcom/google/android/mail/common/base/D;->cpp:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/mail/common/base/D;->cpp:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_2

    .line 196
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/mail/common/base/D;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_1
    return-object p1

    .line 193
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
