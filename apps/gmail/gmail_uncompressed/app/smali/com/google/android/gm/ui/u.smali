.class final Lcom/google/android/gm/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final bqq:Lcom/google/android/gms/people/model/d;

.field final synthetic bqr:Lcom/google/android/gm/ui/t;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ui/t;Lcom/google/android/gms/people/model/d;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/google/android/gm/ui/u;->bqr:Lcom/google/android/gm/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p2, p0, Lcom/google/android/gm/ui/u;->bqq:Lcom/google/android/gms/people/model/d;

    .line 651
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/gm/ui/u;->bqr:Lcom/google/android/gm/ui/t;

    iget-object v0, v0, Lcom/google/android/gm/ui/t;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    iget-object v1, p0, Lcom/google/android/gm/ui/u;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-static {v0, v1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;Lcom/google/android/gms/people/model/d;)V

    .line 656
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "account_switcher"

    const-string v2, "recents"

    const-string v3, "mini_drawer_click"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 658
    return-void
.end method
