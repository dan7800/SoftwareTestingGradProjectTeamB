.class final Lcom/google/analytics/tracking/android/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aVd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/R;->aVd:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/S;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/analytics/tracking/android/R;->aVd:Ljava/util/Map;

    new-instance v1, Lcom/google/analytics/tracking/android/T;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/analytics/tracking/android/T;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/S;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method final dd(Ljava/lang/String;)Lcom/google/analytics/tracking/android/T;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/google/analytics/tracking/android/T;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/analytics/tracking/android/T;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/S;)V

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x0

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/R;->aVd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/T;

    goto :goto_0
.end method
