.class public Lcom/google/android/gms/appdatasearch/CorpusStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/z;


# instance fields
.field final btV:I

.field final btY:Z

.field final btZ:J

.field final bua:J

.field final bub:J

.field final buc:Landroid/os/Bundle;

.field final bud:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/z;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->CREATOR:Lcom/google/android/gms/appdatasearch/z;

    return-void
.end method

.method constructor <init>()V
    .locals 12

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-object v11, v10

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/appdatasearch/CorpusStatus;-><init>(IZJJJLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IZJJJLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btV:I

    iput-boolean p2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btY:Z

    iput-wide p3, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btZ:J

    iput-wide p5, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bua:J

    iput-wide p7, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bub:J

    if-nez p9, :cond_0

    new-instance p9, Landroid/os/Bundle;

    invoke-direct {p9}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p9, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->buc:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bud:Ljava/lang/String;

    return-void
.end method

.method private Jj()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->buc:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->buc:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final Jg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btY:Z

    return v0
.end method

.method public final Jh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btZ:J

    return-wide v0
.end method

.method public final Ji()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bua:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->CREATOR:Lcom/google/android/gms/appdatasearch/z;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/appdatasearch/CorpusStatus;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/appdatasearch/CorpusStatus;

    iget-boolean v1, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btY:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bua:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bua:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bub:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bub:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/appdatasearch/CorpusStatus;->Jj()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/appdatasearch/CorpusStatus;->Jj()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bua:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bub:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/appdatasearch/CorpusStatus;->Jj()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CorpusStatus{found="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastIndexedSeqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->btZ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastCommittedSeqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bua:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", committedNumDocuments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->bub:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", counters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->buc:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/CorpusStatus;->CREATOR:Lcom/google/android/gms/appdatasearch/z;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/z;->a(Lcom/google/android/gms/appdatasearch/CorpusStatus;Landroid/os/Parcel;)V

    return-void
.end method
