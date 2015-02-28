.class final Lcom/google/analytics/tracking/android/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aUY:Ljava/lang/String;

.field private final aUZ:J

.field private final aVa:J

.field private aVb:Ljava/lang/String;


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/N;->aUY:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/N;->aUZ:J

    .line 39
    iput-wide p3, p0, Lcom/google/analytics/tracking/android/N;->aVa:J

    .line 40
    return-void
.end method


# virtual methods
.method final Ca()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/analytics/tracking/android/N;->aUY:Ljava/lang/String;

    return-object v0
.end method

.method final Cb()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/N;->aUZ:J

    return-wide v0
.end method

.method final Cc()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/N;->aVa:J

    return-wide v0
.end method

.method final Cd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/analytics/tracking/android/N;->aVb:Ljava/lang/String;

    return-object v0
.end method

.method final cT(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/analytics/tracking/android/N;->aUY:Ljava/lang/String;

    .line 26
    return-void
.end method

.method final cU(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/analytics/tracking/android/N;->aVb:Ljava/lang/String;

    .line 49
    return-void
.end method
