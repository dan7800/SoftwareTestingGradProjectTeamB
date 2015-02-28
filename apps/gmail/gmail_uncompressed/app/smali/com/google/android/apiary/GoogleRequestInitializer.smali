.class public final Lcom/google/android/apiary/GoogleRequestInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/B;
.implements Lcom/google/api/client/http/n;
.implements Lcom/google/api/client/http/v;


# instance fields
.field private Tz:Ljava/lang/String;

.field private final aVH:Ljava/lang/String;

.field private aVI:Ljava/lang/String;

.field private final aVJ:Ljava/lang/String;

.field private aVK:I

.field private aVL:I

.field private aVM:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLogTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;

    .line 46
    iput v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVK:I

    .line 47
    iput v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVL:I

    .line 61
    iput-object p1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVH:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVJ:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private Cm()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->Tz:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVJ:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/auth/d;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->Tz:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/d;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Lcom/google/android/apiary/AuthenticationException;

    const-string v2, "Could not get an auth token"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apiary/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    new-instance v1, Lcom/google/android/apiary/AuthenticationException;

    const-string v2, "Could not get an auth token"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apiary/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/t;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/B;)Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XJ()Lcom/google/api/client/http/t;

    .line 78
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVK:I

    if-lez v0, :cond_0

    .line 79
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVK:I

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/t;->eZ(I)Lcom/google/api/client/http/t;

    .line 82
    :cond_0
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVL:I

    if-lez v0, :cond_1

    .line 83
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVL:I

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/t;->fa(I)Lcom/google/api/client/http/t;

    .line 85
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/api/client/http/t;Lcom/google/api/client/http/w;Z)Z
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p2}, Lcom/google/api/client/http/w;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    const-string v1, "Got a 401. Invalidating token"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XI()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    const-string v1, "Retrying request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/d;->Y(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/api/client/http/t;)V
    .locals 7

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apiary/GoogleRequestInitializer;->Cm()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OAuth "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/api/client/http/o;->hh(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 92
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->Xz()Lcom/google/api/client/http/j;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/api/client/http/j;->Xn()Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v3, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/common/http/UrlRules;->a(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v1}, Lcom/google/android/common/http/UrlRules;->do(Ljava/lang/String;)Lcom/google/android/common/http/j;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lcom/google/android/common/http/j;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    if-nez v4, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Blocked by "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/common/http/j;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;-><init>(Lcom/google/android/common/http/j;B)V

    throw v0

    .line 103
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 104
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Rule "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/android/common/http/j;->mName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    new-instance v0, Lcom/google/api/client/http/j;

    invoke-direct {v0, v4}, Lcom/google/api/client/http/j;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/t;->e(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/t;

    move-object v1, v0

    .line 111
    :goto_0
    const-string v0, "ifmatch"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/j;->he(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v2, v0}, Lcom/google/api/client/http/o;->hl(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 114
    const-string v0, "ifmatch"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVM:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVM:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :goto_1
    const-string v0, "userAgentPackage"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/j;->he(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    if-eqz v0, :cond_3

    .line 127
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v0, "userAgentPackage"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/api/client/http/o;->hm(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 131
    return-void

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->Tz:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->aVI:Ljava/lang/String;

    .line 70
    return-void
.end method
