.class final Lcom/android/email/activity/setup/q;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final Ml:Lcom/android/emailcommon/provider/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object p2, p0, Lcom/android/email/activity/setup/q;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 111
    return-void
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/email/activity/setup/q;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/email/activity/setup/q;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->ik()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/q;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/Account;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    invoke-virtual {p0}, Lcom/android/email/activity/setup/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/provider/a;->D(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
