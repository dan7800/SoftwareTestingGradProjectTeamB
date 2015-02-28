.class public final Lcom/google/android/gm/drive/c;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/google/android/gm/drive/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final awz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/drive/c;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/c;->mAccount:Ljava/lang/String;

    .line 41
    const-string v0, "recipients"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/c;->awz:Ljava/util/ArrayList;

    .line 42
    const-string v0, "fileIds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/c;->bam:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private Dl()Lcom/google/android/gm/drive/d;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/drive/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_enable_conscrypt_provider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gm/drive/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/g/a;->ai(Landroid/content/Context;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth2:https://www.googleapis.com/auth/drive"

    sget-object v3, Lcom/google/android/gm/drive/c;->mW:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gm/drive/c;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apiary/GoogleRequestInitializer;->w(Ljava/lang/String;)V

    .line 59
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

    .line 63
    new-instance v1, Lcom/google/api/a/a/a/b;

    invoke-direct {v1}, Lcom/google/api/a/a/a/b;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/google/android/gm/drive/c;->awz:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/api/a/a/a/b;->W(Ljava/util/List;)Lcom/google/api/a/a/a/b;

    .line 65
    iget-object v2, p0, Lcom/google/android/gm/drive/c;->bam:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/api/a/a/a/b;->V(Ljava/util/List;)Lcom/google/api/a/a/a/b;

    .line 66
    const-string v2, "READER"

    invoke-virtual {v1, v2}, Lcom/google/api/a/a/a/b;->hI(Ljava/lang/String;)Lcom/google/api/a/a/a/b;

    .line 68
    sget-object v2, Lcom/google/android/gm/drive/c;->mW:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    sget-object v3, Lcom/google/android/gm/drive/c;->mW:Ljava/lang/String;

    const-string v4, "check permissions request: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/google/api/a/a/a/b;->Yc()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/a/a/a;->YC()Lcom/google/api/a/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/api/a/a/e;->a(Lcom/google/api/a/a/a/b;)Lcom/google/api/a/a/f;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/api/a/a/f;->Xe()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/c;

    .line 76
    if-eqz v2, :cond_2

    .line 77
    sget-object v1, Lcom/google/android/gm/drive/c;->mW:Ljava/lang/String;

    const-string v2, "check permissions response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/api/a/a/a/c;->Yc()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    :cond_2
    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0}, Lcom/google/api/a/a/a/c;->YE()Ljava/util/List;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    if-eqz v1, :cond_5

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/a/a/a/d;

    .line 88
    invoke-virtual {v1}, Lcom/google/api/a/a/a/d;->Dq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/drive/PotentialFix;->dG(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    new-instance v4, Lcom/google/android/gm/drive/PotentialFix;

    invoke-direct {v4, v1}, Lcom/google/android/gm/drive/PotentialFix;-><init>(Lcom/google/api/a/a/a/d;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/google/android/gm/drive/c;->mW:Ljava/lang/String;

    const-string v2, "problem checking Drive permission"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    :cond_4
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 93
    :cond_5
    :try_start_1
    new-instance v1, Lcom/google/android/gm/drive/d;

    invoke-virtual {v0}, Lcom/google/api/a/a/a/c;->YF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gm/drive/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gm/drive/c;->Dl()Lcom/google/android/gm/drive/d;

    move-result-object v0

    return-object v0
.end method
