.class public final Lcom/android/mail/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final akg:Lcom/android/mail/a/c;


# instance fields
.field private final akf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/mail/a/c;

    invoke-direct {v0}, Lcom/android/mail/a/c;-><init>()V

    sput-object v0, Lcom/android/mail/a/c;->akg:Lcom/android/mail/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->aap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/a/c;->akf:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public static os()Lcom/android/mail/a/c;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/mail/a/c;->akg:Lcom/android/mail/a/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 90
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mail/a/c;->akf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 91
    :goto_0
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to log id that doesn\'t exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/mail/a/c;->akf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 95
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 96
    return-wide v2
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final bb(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mail/a/c;->akf:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final bc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/a/c;->akf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
