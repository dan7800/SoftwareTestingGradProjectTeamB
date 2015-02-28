.class final Lcom/google/analytics/tracking/android/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aTr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aTs:J

.field private final aTt:Ljava/lang/String;

.field private final aTu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/google/analytics/tracking/android/C;->aTr:Ljava/util/Map;

    .line 387
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/C;->aTs:J

    .line 388
    iput-object p4, p0, Lcom/google/analytics/tracking/android/C;->aTt:Ljava/lang/String;

    .line 389
    iput-object p5, p0, Lcom/google/analytics/tracking/android/C;->aTu:Ljava/util/List;

    .line 390
    return-void
.end method


# virtual methods
.method public final BT()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/analytics/tracking/android/C;->aTr:Ljava/util/Map;

    return-object v0
.end method

.method public final BU()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/C;->aTs:J

    return-wide v0
.end method

.method public final BV()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/analytics/tracking/android/C;->aTu:Ljava/util/List;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/analytics/tracking/android/C;->aTt:Ljava/lang/String;

    return-object v0
.end method
