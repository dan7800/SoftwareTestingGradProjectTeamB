.class final Lcom/android/mail/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/ab;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEf:Lcom/android/mail/ui/ae;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 3955
    iput-object p1, p0, Lcom/android/mail/ui/e;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/e;->aEf:Lcom/android/mail/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ar(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/android/mail/ui/e;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 3963
    iget-object v0, p0, Lcom/android/mail/ui/e;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-eqz v0, :cond_0

    .line 3964
    iget-object v0, p0, Lcom/android/mail/ui/e;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v1, p0, Lcom/android/mail/ui/e;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/e;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/u;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3967
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/e;->aEf:Lcom/android/mail/ui/ae;

    if-eqz v0, :cond_1

    .line 3968
    iget-object v0, p0, Lcom/android/mail/ui/e;->aEf:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xv()V

    .line 3971
    :cond_1
    return-void
.end method
