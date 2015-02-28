.class final Lcom/google/android/gm/preference/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bbY:Lcom/google/android/gm/preference/q;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/q;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->e(Lcom/google/android/gm/preference/q;)Z

    .line 373
    new-instance v0, Lcom/google/android/gm/preference/i;

    iget-object v1, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-virtual {v1}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v2}, Lcom/google/android/gm/preference/q;->f(Lcom/google/android/gm/preference/q;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v1}, Lcom/google/android/gm/preference/q;->g(Lcom/google/android/gm/preference/q;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mail/i/a;->aW(Z)V

    .line 376
    iget-object v0, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->h(Lcom/google/android/gm/preference/q;)Lcom/android/mail/i/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/i/e;->aW(Z)V

    .line 378
    iget-object v0, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->b(Lcom/google/android/gm/preference/q;)V

    .line 380
    iget-object v0, p0, Lcom/google/android/gm/preference/v;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->c(Lcom/google/android/gm/preference/q;)V

    .line 381
    return-void
.end method
