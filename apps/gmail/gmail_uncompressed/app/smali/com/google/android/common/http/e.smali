.class public final Lcom/google/android/common/http/e;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field private final aVZ:Ljava/lang/String;

.field private final aWa:I

.field private final aWb:J

.field private final aWc:J

.field private final aWd:J

.field private final aWe:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 66
    iput-object p2, p0, Lcom/google/android/common/http/e;->aVZ:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/google/android/common/http/e;->aWa:I

    .line 68
    iput-wide p4, p0, Lcom/google/android/common/http/e;->aWb:J

    .line 69
    iput-wide p6, p0, Lcom/google/android/common/http/e;->aWc:J

    .line 70
    iput-wide p8, p0, Lcom/google/android/common/http/e;->aWd:J

    .line 71
    iput-wide p10, p0, Lcom/google/android/common/http/e;->aWe:J

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/google/android/common/http/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/common/http/e;->aWe:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/common/http/e;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/common/http/e;->aWa:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/common/http/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/common/http/e;->aVZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/common/http/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/common/http/e;->aWd:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/common/http/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/common/http/e;->aWb:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/common/http/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/common/http/e;->aWc:J

    return-wide v0
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/google/android/common/http/f;

    invoke-direct {v1, p0, v0}, Lcom/google/android/common/http/f;-><init>(Lcom/google/android/common/http/e;Ljava/io/InputStream;)V

    return-object v1
.end method
