.class final Lcom/google/android/gm/welcome/k;
.super Lcom/google/android/gm/c/h;
.source "SourceFile"


# instance fields
.field final synthetic bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 575
    iput-object p1, p0, Lcom/google/android/gm/welcome/k;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/c/h;-><init>(Landroid/app/Activity;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final CA()Lcom/google/android/gms/common/api/n;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/gm/welcome/k;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gm/welcome/k;->a(Landroid/content/Context;Lcom/google/android/gm/c/h;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    return-object v0
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 584
    invoke-super {p0, p1}, Lcom/google/android/gm/c/h;->r(Landroid/os/Bundle;)V

    .line 585
    iget-object v0, p0, Lcom/google/android/gm/welcome/k;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->a(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V

    .line 586
    return-void
.end method
