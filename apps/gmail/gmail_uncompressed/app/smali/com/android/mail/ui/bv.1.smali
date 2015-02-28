.class final Lcom/android/mail/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aIY:Lcom/android/mail/ui/bu;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bu;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mail/ui/bv;->aIY:Lcom/android/mail/ui/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mail/ui/bv;->aIY:Lcom/android/mail/ui/bu;

    invoke-static {v0}, Lcom/android/mail/ui/bu;->a(Lcom/android/mail/ui/bu;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/mail/ui/bv;->aIY:Lcom/android/mail/ui/bu;

    invoke-static {v0}, Lcom/android/mail/ui/bu;->a(Lcom/android/mail/ui/bu;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bw;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/android/mail/ui/bw;->vZ()V

    .line 105
    :cond_0
    return-void
.end method
