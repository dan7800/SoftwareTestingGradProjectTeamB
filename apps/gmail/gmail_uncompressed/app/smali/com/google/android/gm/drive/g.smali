.class public final Lcom/google/android/gm/drive/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final bat:Lcom/google/android/gm/drive/PotentialFix;

.field private final bau:Ljava/lang/String;

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/drive/g;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/gm/drive/g;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/gm/drive/g;->mAccount:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/android/gm/drive/g;->bat:Lcom/google/android/gm/drive/PotentialFix;

    .line 35
    iput-object p4, p0, Lcom/google/android/gm/drive/g;->bau:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/drive/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_enable_conscrypt_provider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/android/gm/drive/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/g/a;->ai(Landroid/content/Context;)V

    .line 48
    :cond_0
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer;

    iget-object v1, p0, Lcom/google/android/gm/drive/g;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth2:https://www.googleapis.com/auth/drive"

    sget-object v3, Lcom/google/android/gm/drive/g;->mW:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/gm/drive/g;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apiary/GoogleRequestInitializer;->w(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/google/api/a/a/d;

    new-instance v2, Lcom/google/api/client/http/a/c;

    invoke-direct {v2}, Lcom/google/api/client/http/a/c;-><init>()V

    new-instance v3, Lcom/google/api/client/extensions/android/json/a;

    invoke-direct {v3}, Lcom/google/api/client/extensions/android/json/a;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/a/a/d;-><init>(Lcom/google/api/client/http/A;Lcom/google/api/client/json/d;Lcom/google/api/client/http/v;)V

    const-string v0, "Android Gmail"

    invoke-virtual {v1, v0}, Lcom/google/api/a/a/d;->hF(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/a/a/d;->YD()Lcom/google/api/a/a/a;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/api/a/a/a/g;

    invoke-direct {v1}, Lcom/google/api/a/a/a/g;-><init>()V

    .line 57
    iget-object v2, p0, Lcom/google/android/gm/drive/g;->bat:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v2}, Lcom/google/android/gm/drive/PotentialFix;->Dq()Ljava/lang/String;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/google/android/gm/drive/g;->bat:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v3}, Lcom/google/android/gm/drive/PotentialFix;->Dr()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/a/a/a/g;->Y(Ljava/util/List;)Lcom/google/api/a/a/a/g;

    .line 59
    iget-object v3, p0, Lcom/google/android/gm/drive/g;->bat:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v3}, Lcom/google/android/gm/drive/PotentialFix;->Ds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/a/a/a/g;->X(Ljava/util/List;)Lcom/google/api/a/a/a/g;

    .line 60
    iget-object v3, p0, Lcom/google/android/gm/drive/g;->bau:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/api/a/a/a/g;->hK(Ljava/lang/String;)Lcom/google/api/a/a/a/g;

    .line 61
    invoke-virtual {v1, v2}, Lcom/google/api/a/a/a/g;->hJ(Ljava/lang/String;)Lcom/google/api/a/a/a/g;

    .line 63
    sget-object v2, Lcom/google/android/gm/drive/g;->mW:Ljava/lang/String;

    const-string v3, "fix permissions request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    invoke-virtual {v0}, Lcom/google/api/a/a/a;->YC()Lcom/google/api/a/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/api/a/a/e;->a(Lcom/google/api/a/a/a/g;)Lcom/google/api/a/a/g;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/api/a/a/g;->Xe()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/google/android/gm/drive/g;->mW:Ljava/lang/String;

    const-string v2, "problem fixing Drive permission"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
