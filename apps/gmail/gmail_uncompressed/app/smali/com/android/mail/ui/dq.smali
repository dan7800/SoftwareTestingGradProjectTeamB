.class final Lcom/android/mail/ui/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aNN:Lcom/android/mail/ui/dp;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/dp;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mail/ui/dq;->aNN:Lcom/android/mail/ui/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mail/ui/dq;->aNN:Lcom/android/mail/ui/dp;

    invoke-static {v0}, Lcom/android/mail/ui/dp;->a(Lcom/android/mail/ui/dp;)Lcom/android/mail/ui/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/mail/ui/dq;->aNN:Lcom/android/mail/ui/dp;

    invoke-static {v0}, Lcom/android/mail/ui/dp;->a(Lcom/android/mail/ui/dp;)Lcom/android/mail/ui/ds;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/ds;->Ao()V

    .line 111
    :cond_0
    return-void
.end method
