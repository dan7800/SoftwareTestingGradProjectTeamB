.class final Lcom/google/analytics/tracking/android/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/P;


# instance fields
.field final synthetic aVq:Lcom/google/analytics/tracking/android/Z;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Z;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ab;->aVq:Lcom/google/analytics/tracking/android/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Ce()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method
