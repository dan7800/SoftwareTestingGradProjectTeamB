.class final Lcom/android/mail/ui/H;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aEV:Lcom/android/mail/ui/F;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/F;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/mail/ui/H;->aEV:Lcom/android/mail/ui/F;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/mail/ui/H;->aEV:Lcom/android/mail/ui/F;

    iget-object v0, v0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/mail/ui/H;->aEV:Lcom/android/mail/ui/F;

    iget-object v0, v0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/mail/ui/av;->c(Lcom/android/mail/providers/Conversation;Z)V

    .line 575
    :cond_0
    return-void
.end method
