.class public final Lcom/google/android/gms/games/PlayerLevel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/e;


# instance fields
.field private final bNF:I

.field private final bNG:J

.field private final bNH:J

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/e;

    invoke-direct {v0}, Lcom/google/android/gms/games/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerLevel;->CREATOR:Lcom/google/android/gms/games/e;

    return-void
.end method

.method constructor <init>(IIJJ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Min XP must be positive!"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    cmp-long v0, p5, p3

    if-lez v0, :cond_1

    :goto_1
    const-string v0, "Max XP must be more than min XP!"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/games/PlayerLevel;->btV:I

    iput p2, p0, Lcom/google/android/gms/games/PlayerLevel;->bNF:I

    iput-wide p3, p0, Lcom/google/android/gms/games/PlayerLevel;->bNG:J

    iput-wide p5, p0, Lcom/google/android/gms/games/PlayerLevel;->bNH:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(IJJ)V
    .locals 8

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IIJJ)V

    return-void
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerLevel;->btV:I

    return v0
.end method

.method public final Or()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerLevel;->bNF:I

    return v0
.end method

.method public final Os()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevel;->bNG:J

    return-wide v0
.end method

.method public final Ot()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevel;->bNH:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/PlayerLevel;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/games/PlayerLevel;

    iget v2, p1, Lcom/google/android/gms/games/PlayerLevel;->bNF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/games/PlayerLevel;->bNF:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/google/android/gms/games/PlayerLevel;->bNG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/games/PlayerLevel;->bNG:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/google/android/gms/games/PlayerLevel;->bNH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/games/PlayerLevel;->bNH:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/games/PlayerLevel;->bNF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevel;->bNG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevel;->bNH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    const-string v1, "LevelNumber"

    iget v2, p0, Lcom/google/android/gms/games/PlayerLevel;->bNF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "MinXp"

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevel;->bNG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "MaxXp"

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevel;->bNH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/games/PlayerLevel;Landroid/os/Parcel;)V

    return-void
.end method
