.class public Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/g;


# instance fields
.field final bAe:J

.field public final bAf:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

.field final bxf:I

.field final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/g;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->bxf:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->bAe:J

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->bAf:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v0, "constructed"

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->aj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private aj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const-string v0, "GLSLogging"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->bAe:J

    sub-long v4, v0, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-string v3, "[%s, %,d.%03ds]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->mName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v11

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->bAf:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    goto :goto_0

    :cond_0
    const-string v0, " > "

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSLogging"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->mName:Ljava/lang/String;

    const-string v1, "writing to parcel"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->aj(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/g;->a(Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;Landroid/os/Parcel;I)V

    return-void
.end method
