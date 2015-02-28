.class public Lcom/google/android/gm/aC;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final Tz:Ljava/lang/String;

.field private final aXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/aC;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/google/android/gm/aC;->Tz:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/google/android/gm/aC;->aXT:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private CN()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gm/aC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/ay;->bk(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gm/aC;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gm/aC;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 42
    sget-object v4, Lcom/google/android/gm/aC;->mW:Ljava/lang/String;

    const-string v5, "Getting Gaia login link in background for %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 46
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "weblogin:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "service=mail&continue="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&de=1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    iget-object v1, p0, Lcom/google/android/gm/aC;->Tz:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v1, v2

    .line 54
    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    .line 56
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gm/aC;->Tz:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/google/android/gms/auth/d;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableNotifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v5

    sget-object v5, Lcom/google/android/gm/aC;->mW:Ljava/lang/String;

    const-string v6, "User recoverable exception for scope: %s. Retrying."

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :catch_1
    move-exception v1

    sget-object v1, Lcom/google/android/gm/aC;->mW:Ljava/lang/String;

    const-string v3, "Google auth exception for scope: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 67
    :catch_2
    move-exception v5

    sget-object v5, Lcom/google/android/gm/aC;->mW:Ljava/lang/String;

    const-string v6, "IO exception for scope: %s. Retrying."

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gm/aC;->aXT:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gm/aC;->CN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
