.class public final Lcom/google/android/gms/fitness/data/RawBucket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/RawBucket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bKr:J

.field final bKs:J

.field final bKt:Lcom/google/android/gms/fitness/data/Session;

.field final bKv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            ">;"
        }
    .end annotation
.end field

.field final bKw:I

.field final bKx:Z

.field final bMd:I

.field final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/m;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/RawBucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lcom/google/android/gms/fitness/data/Session;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/RawBucket;->btV:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKr:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKs:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKt:Lcom/google/android/gms/fitness/data/Session;

    iput p7, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bMd:I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKv:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKw:I

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKx:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Bucket;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/Bucket;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->btV:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/Bucket;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKr:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/Bucket;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKs:J

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->Ms()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKt:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->Mt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bMd:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->Mv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKw:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->Mw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKx:Z

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->Mu()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKv:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/data/RawDataSet;

    invoke-direct {v3, v0, p2, p3}, Lcom/google/android/gms/fitness/data/RawDataSet;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/RawBucket;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKr:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bKr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKs:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bKs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bMd:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bMd:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKv:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bKv:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKw:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bKw:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKx:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bKx:Z

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/E;->ad(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bMd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKv:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "bucketType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "serverHasMoreData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bKx:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/m;->a(Lcom/google/android/gms/fitness/data/RawBucket;Landroid/os/Parcel;I)V

    return-void
.end method
