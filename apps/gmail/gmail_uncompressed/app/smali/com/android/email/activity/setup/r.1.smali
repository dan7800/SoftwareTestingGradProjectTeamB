.class final Lcom/android/email/activity/setup/r;
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


# instance fields
.field final synthetic MK:Lcom/android/email/SecurityPolicy;

.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;


# direct methods
.method constructor <init>(Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/email/activity/setup/r;->MK:Lcom/android/email/SecurityPolicy;

    iput-object p2, p0, Lcom/android/email/activity/setup/r;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/email/activity/setup/r;->MK:Lcom/android/email/SecurityPolicy;

    iget-object v1, p0, Lcom/android/email/activity/setup/r;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-virtual {v0, v2, v3}, Lcom/android/email/SecurityPolicy;->k(J)V

    const/4 v0, 0x0

    return-object v0
.end method
