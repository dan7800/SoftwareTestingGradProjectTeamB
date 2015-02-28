.class final Lcom/google/android/gm/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/k;


# instance fields
.field final synthetic bql:Lcom/google/android/gm/ui/GmailDrawerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/gm/ui/s;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ui/GmailDrawerFragment;B)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/s;-><init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V

    return-void
.end method


# virtual methods
.method public final P(I)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public final Q(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public final R(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/gm/ui/s;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/s;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/gm/ui/s;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->setNavigationMode(I)V

    .line 414
    iget-object v0, p0, Lcom/google/android/gm/ui/s;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    iget-object v1, p0, Lcom/google/android/gm/ui/s;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    .line 416
    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method
