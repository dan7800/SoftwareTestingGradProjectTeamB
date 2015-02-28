.class final Lcom/google/android/gm/ui/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# instance fields
.field final synthetic bql:Lcom/google/android/gm/ui/GmailDrawerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/google/android/gm/ui/B;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ui/GmailDrawerFragment;B)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/B;-><init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 898
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 900
    iget-object v1, p0, Lcom/google/android/gm/ui/B;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->d(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/people/accountswitcherview/F;->setIntrinsicHeight(I)V

    .line 901
    iget-object v1, p0, Lcom/google/android/gm/ui/B;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->eS(I)V

    .line 903
    return-object p2
.end method
