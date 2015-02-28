.class final Lcom/google/android/gm/welcome/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final Tz:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/gm/welcome/g;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/google/android/gm/welcome/g;->Tz:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iget-object v1, p0, Lcom/google/android/gm/welcome/g;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->JT()Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v4, p0, Lcom/google/android/gm/welcome/g;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/welcome/g;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4, v5, v1, v1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/welcome/g;->Tz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->fK(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v1

    const-string v2, "oauth2:https://www.googleapis.com/auth/gmail.readonly"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->fL(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v1

    .line 54
    const-string v2, "WelcomeTour"

    const-string v3, "Token request created"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 61
    const/4 v0, 0x0

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->JU()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "WelcomeTour"

    const-string v1, "Successfully obtained token forcing email check"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v2, "WelcomeTour"

    const-string v3, "Failed to obtain token - %s was null"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v1, :cond_2

    const-string v0, "response"

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "WelcomeTour"

    const-string v2, "Failed to obtain token - %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 69
    :cond_2
    :try_start_1
    const-string v0, "token"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
