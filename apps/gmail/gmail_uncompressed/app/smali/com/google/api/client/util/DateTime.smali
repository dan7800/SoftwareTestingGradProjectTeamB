.class public final Lcom/google/api/client/util/DateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dateOnly:Z

.field private final tzShift:I

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 79
    return-void
.end method

.method private constructor <init>(ZJLjava/lang/Integer;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean p1, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 117
    iput-wide p2, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 118
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    .line 120
    return-void

    .line 118
    :cond_0
    if-nez p4, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;II)V
    .locals 2

    .prologue
    .line 307
    if-gez p1, :cond_0

    .line 308
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    neg-int p1, p1

    :cond_0
    move v0, p1

    .line 312
    :goto_0
    if-lez v0, :cond_1

    .line 313
    div-int/lit8 v0, v0, 0xa

    .line 314
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 317
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_2
    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    :cond_3
    return-void
.end method

.method public static hx(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;
    .locals 15

    .prologue
    const/16 v0, 0x17

    const/16 v4, 0x13

    const/16 v6, 0xa

    const/4 v8, 0x0

    .line 257
    const/4 v1, 0x0

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 258
    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 259
    const/16 v3, 0x8

    const/16 v5, 0xa

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    .line 262
    if-le v12, v6, :cond_0

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    move v11, v5

    .line 267
    :goto_0
    const/4 v7, 0x0

    .line 268
    if-eqz v11, :cond_2

    .line 269
    const v0, 0x7fffffff

    move v9, v0

    move v10, v8

    move v6, v8

    move v5, v8

    move v4, v8

    .line 281
    :goto_1
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v13, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v13}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 282
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 283
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 284
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 285
    if-le v12, v9, :cond_6

    .line 287
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_4

    move-wide v0, v2

    move v2, v8

    .line 297
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 299
    :goto_3
    new-instance v3, Lcom/google/api/client/util/DateTime;

    invoke-direct {v3, v11, v0, v1, v2}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    return-object v3

    :cond_1
    move v11, v8

    .line 262
    goto :goto_0

    .line 271
    :cond_2
    const/16 v5, 0xb

    const/16 v6, 0xd

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 272
    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 273
    const/16 v6, 0x11

    const/16 v10, 0x13

    invoke-virtual {p0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 274
    const/16 v10, 0x13

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v13, 0x2e

    if-ne v10, v13, :cond_3

    .line 275
    const/16 v4, 0x14

    const/16 v10, 0x17

    invoke-virtual {p0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v10, v4

    move v4, v9

    move v9, v0

    .line 276
    goto :goto_1

    :cond_3
    move v10, v8

    move v14, v4

    move v4, v9

    move v9, v14

    .line 278
    goto :goto_1

    .line 290
    :cond_4
    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v1, v9, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/lit8 v1, v9, 0x4

    add-int/lit8 v4, v9, 0x6

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_5

    .line 293
    neg-int v0, v0

    .line 295
    :cond_5
    int-to-long v4, v0

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    move v14, v0

    move-wide v0, v2

    move v2, v14

    goto :goto_2

    .line 301
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid date/time format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-wide v0, v2

    move-object v2, v7

    goto/16 :goto_3
.end method


# virtual methods
.method public final Ys()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0x3a

    const/16 v9, 0x2d

    const/4 v8, 0x2

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 174
    iget-wide v2, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget v4, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 175
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 178
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v8}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 180
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, v8}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 182
    iget-boolean v2, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-nez v2, :cond_1

    .line 184
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, v8}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 186
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, v8}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 188
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, v8}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 191
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 196
    :cond_0
    iget v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-nez v0, :cond_2

    .line 197
    const/16 v0, 0x5a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_2
    iget v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    .line 200
    iget v2, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-lez v2, :cond_3

    .line 201
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :goto_1
    div-int/lit8 v2, v0, 0x3c

    .line 208
    rem-int/lit8 v0, v0, 0x3c

    .line 209
    invoke-static {v1, v2, v8}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    .line 210
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {v1, v0, v8}, Lcom/google/api/client/util/DateTime;->a(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    neg-int v0, v0

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    if-ne p1, p0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    instance-of v2, p1, Lcom/google/api/client/util/DateTime;

    if-nez v2, :cond_2

    move v0, v1

    .line 236
    goto :goto_0

    .line 238
    :cond_2
    check-cast p1, Lcom/google/api/client/util/DateTime;

    .line 239
    iget-boolean v2, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    iget-boolean v3, p1, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget-wide v4, p1, Lcom/google/api/client/util/DateTime;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    iget v3, p1, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 244
    const/4 v0, 0x3

    new-array v2, v0, [J

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/google/api/client/util/DateTime;->value:J

    aput-wide v4, v2, v0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    aput-wide v0, v2, v3

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    int-to-long v4, v1

    aput-wide v4, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->Ys()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
