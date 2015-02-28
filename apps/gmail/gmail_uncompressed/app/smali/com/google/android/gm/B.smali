.class final Lcom/google/android/gm/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aXM:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic aXN:Landroid/content/Intent;

.field final synthetic aXO:Lcom/google/android/gm/GmailIntentService;


# direct methods
.method constructor <init>(Lcom/google/android/gm/GmailIntentService;Lcom/google/android/gm/provider/MailEngine;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gm/B;->aXO:Lcom/google/android/gm/GmailIntentService;

    iput-object p2, p0, Lcom/google/android/gm/B;->aXM:Lcom/google/android/gm/provider/MailEngine;

    iput-object p3, p0, Lcom/google/android/gm/B;->aXN:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/B;->aXM:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FX()Lcom/google/android/gm/provider/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/B;->aXN:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/g;->d(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
