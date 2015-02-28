.class final Lcom/android/mail/browse/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic alq:Lcom/android/mail/browse/k;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/k;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mail/browse/l;->alq:Lcom/android/mail/browse/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mail/browse/l;->alq:Lcom/android/mail/browse/k;

    invoke-virtual {v0}, Lcom/android/mail/browse/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/aP;->wy()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 61
    :cond_0
    return-void
.end method
