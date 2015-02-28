.class final Lcom/android/email/activity/setup/l;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic MA:Lcom/android/email/activity/setup/k;

.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/k;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/email/activity/setup/l;->MA:Lcom/android/email/activity/setup/k;

    iput-object p3, p0, Lcom/android/email/activity/setup/l;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, p2}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/email/activity/setup/l;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/l;->MA:Lcom/android/email/activity/setup/k;

    iget-object v1, v1, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v1}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->X(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/l;->Ms:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method
