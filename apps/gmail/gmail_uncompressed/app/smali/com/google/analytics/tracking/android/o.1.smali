.class final Lcom/google/analytics/tracking/android/o;
.super Lcom/google/analytics/tracking/android/ah;
.source "SourceFile"


# instance fields
.field final synthetic aSD:Lcom/google/analytics/tracking/android/m;

.field private aSE:D

.field private aSF:Z


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/m;)V
    .locals 2

    .prologue
    .line 455
    iput-object p1, p0, Lcom/google/analytics/tracking/android/o;->aSD:Lcom/google/analytics/tracking/android/m;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ah;-><init>()V

    .line 458
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/o;->aSE:D

    return-void
.end method


# virtual methods
.method public final BH()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public final b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public final b(D)V
    .locals 1

    .prologue
    .line 547
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/o;->aSE:D

    .line 548
    return-void
.end method

.method public final bI(Z)V
    .locals 0

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/o;->aSF:Z

    .line 538
    return-void
.end method

.method public final ba(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public final cO(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public final cP(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public final cQ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public final f(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public final k(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
