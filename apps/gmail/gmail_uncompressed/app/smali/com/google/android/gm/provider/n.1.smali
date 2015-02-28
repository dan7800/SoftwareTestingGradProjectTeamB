.class final Lcom/google/android/gm/provider/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final bde:J

.field final bdf:J

.field final bdg:I

.field final bdh:I


# direct methods
.method constructor <init>(JJII)V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-wide p1, p0, Lcom/google/android/gm/provider/n;->bde:J

    .line 243
    iput-wide p3, p0, Lcom/google/android/gm/provider/n;->bdf:J

    .line 244
    iput p5, p0, Lcom/google/android/gm/provider/n;->bdg:I

    .line 245
    iput p6, p0, Lcom/google/android/gm/provider/n;->bdh:I

    .line 246
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 250
    const-string v0, "id: %d, status: %d, size: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gm/provider/n;->bde:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gm/provider/n;->bdg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gm/provider/n;->bdf:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
