.class final Lcom/google/android/gm/provider/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final blI:Ljava/io/InputStream;

.field private blJ:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 3550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3548
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/provider/bl;->blJ:I

    .line 3551
    iput-object p1, p0, Lcom/google/android/gm/provider/bl;->blI:Ljava/io/InputStream;

    .line 3552
    return-void
.end method


# virtual methods
.method public final HD()I
    .locals 1

    .prologue
    .line 3559
    iget v0, p0, Lcom/google/android/gm/provider/bl;->blJ:I

    return v0
.end method

.method public final HE()Lcom/google/common/a/a/a;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3567
    new-instance v1, Lcom/google/common/a/a/a;

    invoke-direct {v1, v0}, Lcom/google/common/a/a/a;-><init>(Lcom/google/common/a/a/b;)V

    .line 3568
    sget-object v2, Lcom/google/android/gm/provider/a/a;->bny:Lcom/google/common/a/a/b;

    iget-object v3, p0, Lcom/google/android/gm/provider/bl;->blI:Ljava/io/InputStream;

    invoke-static {v2, v3, v1}, Lcom/google/common/a/a/c;->a(Lcom/google/common/a/a/b;Ljava/io/InputStream;Lcom/google/common/a/a/a;)I

    move-result v2

    .line 3570
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3578
    :goto_0
    return-object v0

    .line 3571
    :cond_0
    new-instance v0, Lcom/google/common/a/a/a;

    sget-object v3, Lcom/google/android/gm/provider/a/a;->bny:Lcom/google/common/a/a/b;

    invoke-direct {v0, v3}, Lcom/google/common/a/a/a;-><init>(Lcom/google/common/a/a/b;)V

    .line 3574
    :try_start_0
    invoke-virtual {v0, v2, v1}, Lcom/google/common/a/a/a;->a(ILcom/google/common/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3576
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response proto has an unexpected field"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 3582
    iget-object v0, p0, Lcom/google/android/gm/provider/bl;->blI:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3583
    return-void
.end method

.method public final dV(I)V
    .locals 0

    .prologue
    .line 3555
    iput p1, p0, Lcom/google/android/gm/provider/bl;->blJ:I

    .line 3556
    return-void
.end method
