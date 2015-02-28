.class final Lcom/android/mail/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEw:Lcom/android/mail/ui/u;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/u;)V
    .locals 0

    .prologue
    .line 3062
    iput-object p1, p0, Lcom/android/mail/ui/v;->aEw:Lcom/android/mail/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/android/mail/ui/v;->aEw:Lcom/android/mail/ui/u;

    iget-object v6, v0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    new-instance v0, Lcom/android/mail/ui/ToastBarOperation;

    iget-object v1, p0, Lcom/android/mail/ui/v;->aEw:Lcom/android/mail/ui/u;

    invoke-static {v1}, Lcom/android/mail/ui/u;->a(Lcom/android/mail/ui/u;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/mail/ui/v;->aEw:Lcom/android/mail/ui/u;

    invoke-static {v2}, Lcom/android/mail/ui/u;->b(Lcom/android/mail/ui/u;)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/v;->aEw:Lcom/android/mail/ui/u;

    invoke-static {v4}, Lcom/android/mail/ui/u;->c(Lcom/android/mail/ui/u;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/mail/ui/v;->aEw:Lcom/android/mail/ui/u;

    iget-object v5, v5, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v5, v5, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    invoke-virtual {v6, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 3067
    return-void
.end method
