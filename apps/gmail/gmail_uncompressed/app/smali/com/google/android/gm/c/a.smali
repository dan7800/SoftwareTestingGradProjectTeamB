.class public final Lcom/google/android/gm/c/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bqM:Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

.field private bqN:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

.field private final pe:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/c/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/gm/c/a;->pe:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/c/a;->pe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/g/a;->ai(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 41
    sget-object v0, Lcom/google/android/gm/c/a;->TAG:Ljava/lang/String;

    const-string v1, "Repairable error in ConscryptMailActivityTask"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    iput-object v3, p0, Lcom/google/android/gm/c/a;->bqM:Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    .line 43
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "gms_core"

    const-string v2, "conscrypt_repairable"

    invoke-virtual {v3}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->JR()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 47
    sget-object v0, Lcom/google/android/gm/c/a;->TAG:Ljava/lang/String;

    const-string v1, "Unrecoverable error in ConscryptMailActivityTask"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    iput-object v3, p0, Lcom/google/android/gm/c/a;->bqN:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    .line 49
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "gms_core"

    const-string v2, "conscrypt_gms_core_not_available"

    iget v3, v3, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gm/c/a;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 19
    iget-object v0, p0, Lcom/google/android/gm/c/a;->bqM:Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/c/a;->pe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gm/c/a;->bqM:Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->JR()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/c/h;->a(Landroid/app/Activity;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/c/a;->bqN:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/c/a;->pe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gm/c/a;->bqN:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    iget v1, v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/c/h;->a(Landroid/app/Activity;II)V

    goto :goto_0
.end method
