.class public final Lcom/google/a/a/a/a/a/d;
.super Lcom/google/android/gms/internal/dm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dm",
        "<",
        "Lcom/google/a/a/a/a/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field public cCP:J

.field public cCQ:I

.field public cCR:I

.field public cCS:Z

.field public cCT:[Lcom/google/a/a/a/a/a/e;

.field public cCU:Lcom/google/a/a/a/a/a/c;

.field public cCV:[B

.field public cCW:[B

.field public cCX:[B

.field public cCY:Lcom/google/a/a/a/a/a/b;

.field public cCZ:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dm;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/a/a/a/a/a/d;->cCQ:I

    iput v2, p0, Lcom/google/a/a/a/a/a/d;->cCR:I

    iput-boolean v2, p0, Lcom/google/a/a/a/a/a/d;->cCS:Z

    invoke-static {}, Lcom/google/a/a/a/a/a/e;->aau()[Lcom/google/a/a/a/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    iput-object v3, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    sget-object v0, Lcom/google/android/gms/internal/dw;->cak:[B

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCV:[B

    sget-object v0, Lcom/google/android/gms/internal/dw;->cak:[B

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCW:[B

    sget-object v0, Lcom/google/android/gms/internal/dw;->cak:[B

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCX:[B

    iput-object v3, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/a/a/a/a/a/d;->bZR:Lcom/google/android/gms/internal/dp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/a/d;->cac:I

    return-void
.end method


# virtual methods
.method protected final Ma()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/dm;->Ma()I

    move-result v0

    iget-wide v2, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vx;->aZ(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vx;->b(ILcom/google/android/gms/internal/dt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCV:[B

    sget-object v2, Lcom/google/android/gms/internal/dw;->cak:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCV:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(ILcom/google/android/gms/internal/dt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCW:[B

    sget-object v2, Lcom/google/android/gms/internal/dw;->cak:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCW:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(ILcom/google/android/gms/internal/dt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/google/a/a/a/a/a/d;->cCS:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/a/a/a/a/a/d;->cCS:Z

    invoke-static {}, Lcom/google/android/gms/internal/vx;->SL()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/a/a/a/a/a/d;->cCQ:I

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/a/a/a/a/a/d;->cCQ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->aa(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/a/a/a/a/a/d;->cCR:I

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/a/a/a/a/a/d;->cCR:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->aa(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCX:[B

    sget-object v2, Lcom/google/android/gms/internal/dw;->cak:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCX:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/vx;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->aY(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->g(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/vx;->a(ILcom/google/android/gms/internal/dt;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCV:[B

    sget-object v1, Lcom/google/android/gms/internal/dw;->cak:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCV:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(ILcom/google/android/gms/internal/dt;)V

    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCW:[B

    sget-object v1, Lcom/google/android/gms/internal/dw;->cak:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCW:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(ILcom/google/android/gms/internal/dt;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/a/a/a/a/a/d;->cCS:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/a/a/a/a/a/d;->cCS:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vx;->ck(Z)V

    :cond_8
    iget v0, p0, Lcom/google/a/a/a/a/a/d;->cCQ:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/a/a/a/a/a/d;->cCQ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->Z(II)V

    :cond_9
    iget v0, p0, Lcom/google/a/a/a/a/a/d;->cCR:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/a/a/a/a/a/d;->cCR:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->Z(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCX:[B

    sget-object v1, Lcom/google/android/gms/internal/dw;->cak:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCX:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->g(ILjava/lang/String;)V

    :cond_c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/vx;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/a/a/a/a/a/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/a/a/a/a/a/d;

    iget-wide v2, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    iget-wide v4, p1, Lcom/google/a/a/a/a/a/d;->cCP:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/google/a/a/a/a/a/d;->cCQ:I

    iget v2, p1, Lcom/google/a/a/a/a/a/d;->cCQ:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/a/a/a/a/a/d;->cCR:I

    iget v2, p1, Lcom/google/a/a/a/a/a/d;->cCR:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/a/a/a/a/a/d;->cCS:Z

    iget-boolean v2, p1, Lcom/google/a/a/a/a/a/d;->cCS:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ds;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCV:[B

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->cCV:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCW:[B

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->cCW:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCX:[B

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->cCX:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/a/a/a/a/a/d;->a(Lcom/google/android/gms/internal/dm;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    invoke-virtual {v1, v2}, Lcom/google/a/a/a/a/a/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    invoke-virtual {v1, v2}, Lcom/google/a/a/a/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    iget-wide v4, p0, Lcom/google/a/a/a/a/a/d;->cCP:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/a/a/a/a/a/d;->cCQ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/a/a/a/a/a/d;->cCR:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/a/a/a/a/a/d;->cCS:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCT:[Lcom/google/a/a/a/a/a/e;

    invoke-static {v2}, Lcom/google/android/gms/internal/ds;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCV:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCX:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/a/a/a/a/a/d;->SN()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCU:Lcom/google/a/a/a/a/a/c;

    invoke-virtual {v0}, Lcom/google/a/a/a/a/a/c;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->cCY:Lcom/google/a/a/a/a/a/b;

    invoke-virtual {v0}, Lcom/google/a/a/a/a/a/b;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->cCZ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
