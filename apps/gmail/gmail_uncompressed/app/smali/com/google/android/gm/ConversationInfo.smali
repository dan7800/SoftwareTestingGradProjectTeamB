.class public Lcom/google/android/gm/ConversationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aPP:J

.field private final aPQ:J

.field private final aXn:J

.field private aXo:J

.field private final aXp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gm/u;

    invoke-direct {v0}, Lcom/google/android/gm/u;-><init>()V

    sput-object v0, Lcom/google/android/gm/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJJJZ)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/google/android/gm/ConversationInfo;->aPP:J

    .line 50
    iput-wide p3, p0, Lcom/google/android/gm/ConversationInfo;->aPQ:J

    .line 51
    iput-wide p5, p0, Lcom/google/android/gm/ConversationInfo;->aXn:J

    .line 52
    iput-wide p7, p0, Lcom/google/android/gm/ConversationInfo;->aXo:J

    .line 53
    iput-boolean p9, p0, Lcom/google/android/gm/ConversationInfo;->aXp:Z

    .line 54
    return-void
.end method

.method synthetic constructor <init>(JJJJZB)V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJZ)V

    return-void
.end method

.method private constructor <init>(JJLjava/util/Map;Ljava/util/Set;Lcom/google/android/gm/provider/D;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/D;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {p5 .. p5}, Lcom/google/android/gm/provider/Gmail;->i(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p7, :cond_1

    if-eqz p6, :cond_1

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gm/provider/D;->Es()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v12, 0x1

    :goto_0
    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJZ)V

    .line 38
    return-void

    .line 34
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JJLjava/util/Map;Ljava/util/Set;Lcom/google/android/gm/provider/D;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/D;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;Ljava/util/Set;Lcom/google/android/gm/provider/D;)V

    .line 59
    return-void
.end method

.method public static a(Lcom/google/android/gm/provider/B;Lcom/google/android/gm/provider/D;)Lcom/google/android/gm/ConversationInfo;
    .locals 10

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->CW()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->zC()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->Ec()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->Ed()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->Eb()Ljava/util/Set;

    move-result-object v7

    const/4 v9, 0x0

    move-object v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;Ljava/util/Set;Lcom/google/android/gm/provider/D;B)V

    goto :goto_0
.end method


# virtual methods
.method public final CD()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aPQ:J

    return-wide v0
.end method

.method public final CE()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aXn:J

    return-wide v0
.end method

.method public final CF()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aXo:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    monitor-enter p0

    .line 141
    if-ne p1, p0, :cond_0

    .line 142
    monitor-exit p0

    .line 150
    :goto_0
    return v0

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 146
    :cond_1
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 149
    :cond_2
    check-cast p1, Lcom/google/android/gm/ConversationInfo;

    .line 150
    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aPP:J

    iget-wide v4, p1, Lcom/google/android/gm/ConversationInfo;->aPP:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aPQ:J

    iget-wide v4, p1, Lcom/google/android/gm/ConversationInfo;->aPQ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aXn:J

    iget-wide v4, p1, Lcom/google/android/gm/ConversationInfo;->aXn:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aXo:J

    iget-wide v4, p1, Lcom/google/android/gm/ConversationInfo;->aXo:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gm/ConversationInfo;->aXp:Z

    iget-boolean v3, p1, Lcom/google/android/gm/ConversationInfo;->aXp:Z

    if-ne v2, v3, :cond_3

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    .line 150
    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aPP:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aPQ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aXn:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->aXo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gm/ConversationInfo;->aXp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized uE()Z
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationInfo;->aXp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aPP:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aPQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aXn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aXo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationInfo;->aXp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zC()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->aPP:J

    return-wide v0
.end method
