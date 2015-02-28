.class final Lcom/google/analytics/tracking/android/AdMobInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aRZ:Lcom/google/analytics/tracking/android/AdMobInfo;


# instance fields
.field private aSa:I

.field private aSb:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/analytics/tracking/android/AdMobInfo;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/AdMobInfo;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo;->aRZ:Lcom/google/analytics/tracking/android/AdMobInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->aSb:Ljava/util/Random;

    .line 30
    return-void
.end method

.method static Bw()Lcom/google/analytics/tracking/android/AdMobInfo;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/analytics/tracking/android/AdMobInfo;->aRZ:Lcom/google/analytics/tracking/android/AdMobInfo;

    return-object v0
.end method


# virtual methods
.method final Bx()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->aSb:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->aSa:I

    .line 54
    iget v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->aSa:I

    return v0
.end method
