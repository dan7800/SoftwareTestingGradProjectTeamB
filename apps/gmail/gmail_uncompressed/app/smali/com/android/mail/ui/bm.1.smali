.class final Lcom/android/mail/ui/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aIR:Lcom/android/mail/ui/bl;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bl;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/mail/ui/bm;->aIR:Lcom/android/mail/ui/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/ui/bm;->aIR:Lcom/android/mail/ui/bl;

    invoke-static {v0}, Lcom/android/mail/ui/bl;->a(Lcom/android/mail/ui/bl;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/mail/ui/bm;->aIR:Lcom/android/mail/ui/bl;

    invoke-static {v0}, Lcom/android/mail/ui/bl;->b(Lcom/android/mail/ui/bl;)Lcom/android/mail/ui/bV;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bm;->aIR:Lcom/android/mail/ui/bl;

    invoke-static {v1}, Lcom/android/mail/ui/bl;->a(Lcom/android/mail/ui/bl;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/bV;->h(Lcom/android/mail/providers/Folder;)V

    .line 72
    :cond_0
    return-void
.end method
