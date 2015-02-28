.class public abstract Lcom/google/android/gms/internal/dt;
.super Ljava/lang/Object;


# instance fields
.field protected volatile cac:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/dt;->cac:I

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/dt;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dt;->SP()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/vx;->a([BII)Lcom/google/android/gms/internal/vx;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/dt;->a(Lcom/google/android/gms/internal/vx;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vx;->SM()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected Ma()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final SO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/dt;->cac:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dt;->SP()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/dt;->cac:I

    return v0
.end method

.method public final SP()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dt;->Ma()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dt;->cac:I

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/vx;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/du;->c(Lcom/google/android/gms/internal/dt;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
