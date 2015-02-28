.class public final Landroid/support/v4/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final gK:Ljava/lang/Object;


# instance fields
.field private gL:Z

.field private gM:[J

.field private gN:[Ljava/lang/Object;

.field private gO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/f/f;->gK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/f/f;-><init>(B)V

    .line 56
    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Landroid/support/v4/f/f;->gL:Z

    .line 66
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/support/v4/f/c;->s(I)I

    move-result v0

    .line 71
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/support/v4/f/f;->gM:[J

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    .line 74
    iput v2, p0, Landroid/support/v4/f/f;->gO:I

    .line 75
    return-void
.end method

.method private aQ()Landroid/support/v4/f/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/f",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/f/f;->gM:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/f/f;->gM:[J

    .line 84
    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private gc()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 148
    iget v3, p0, Landroid/support/v4/f/f;->gO:I

    .line 150
    iget-object v4, p0, Landroid/support/v4/f/f;->gM:[J

    .line 151
    iget-object v5, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 153
    :goto_0
    if-ge v1, v3, :cond_2

    .line 154
    aget-object v6, v5, v1

    .line 156
    sget-object v7, Landroid/support/v4/f/f;->gK:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 157
    if-eq v1, v0, :cond_0

    .line 158
    aget-wide v8, v4, v1

    aput-wide v8, v4, v0

    .line 159
    aput-object v6, v5, v0

    .line 160
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/f/f;->gL:Z

    .line 168
    iput v0, p0, Landroid/support/v4/f/f;->gO:I

    .line 171
    return-void
.end method

.method private keyAt(I)J
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/support/v4/f/f;->gL:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Landroid/support/v4/f/f;->gc()V

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/f;->gM:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method private valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/support/v4/f/f;->gL:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Landroid/support/v4/f/f;->gc()V

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/f/f;->aQ()Landroid/support/v4/f/f;

    move-result-object v0

    return-object v0
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/f/f;->gM:[J

    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/f/c;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/f/f;->gK:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final put(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-object v0, p0, Landroid/support/v4/f/f;->gM:[J

    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/f/c;->a([JIJ)I

    move-result v0

    .line 181
    if-ltz v0, :cond_0

    .line 182
    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 223
    :goto_0
    return-void

    .line 184
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 186
    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/f/f;->gK:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Landroid/support/v4/f/f;->gM:[J

    aput-wide p1, v1, v0

    .line 188
    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    .line 192
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/f/f;->gL:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    iget-object v2, p0, Landroid/support/v4/f/f;->gM:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 193
    invoke-direct {p0}, Landroid/support/v4/f/f;->gc()V

    .line 196
    iget-object v0, p0, Landroid/support/v4/f/f;->gM:[J

    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/f/c;->a([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 199
    :cond_2
    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    iget-object v2, p0, Landroid/support/v4/f/f;->gM:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 200
    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/f/c;->s(I)I

    move-result v1

    .line 202
    new-array v2, v1, [J

    .line 203
    new-array v1, v1, [Ljava/lang/Object;

    .line 206
    iget-object v3, p0, Landroid/support/v4/f/f;->gM:[J

    iget-object v4, p0, Landroid/support/v4/f/f;->gM:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v3, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v2, p0, Landroid/support/v4/f/f;->gM:[J

    .line 210
    iput-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    .line 213
    :cond_3
    iget v1, p0, Landroid/support/v4/f/f;->gO:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 215
    iget-object v1, p0, Landroid/support/v4/f/f;->gM:[J

    iget-object v2, p0, Landroid/support/v4/f/f;->gM:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/f/f;->gO:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/f/f;->gO:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :cond_4
    iget-object v1, p0, Landroid/support/v4/f/f;->gM:[J

    aput-wide p1, v1, v0

    .line 220
    iget-object v1, p0, Landroid/support/v4/f/f;->gN:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 221
    iget v0, p0, Landroid/support/v4/f/f;->gO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/f/f;->gO:I

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 368
    iget-boolean v0, p0, Landroid/support/v4/f/f;->gL:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/f/f;->gc()V

    :cond_0
    iget v0, p0, Landroid/support/v4/f/f;->gO:I

    if-gtz v0, :cond_1

    .line 369
    const-string v0, "{}"

    .line 389
    :goto_0
    return-object v0

    .line 372
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/f/f;->gO:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/support/v4/f/f;->gO:I

    if-ge v0, v2, :cond_4

    .line 375
    if-lez v0, :cond_2

    .line 376
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/f/f;->keyAt(I)J

    move-result-wide v2

    .line 379
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {p0, v0}, Landroid/support/v4/f/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 382
    if-eq v2, p0, :cond_3

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    :cond_3
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 388
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
