.class final Lcom/android/email/activity/setup/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ph:Lcom/android/email/activity/setup/az;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/az;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/activity/setup/aA;->Ph:Lcom/android/email/activity/setup/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/setup/aA;->Ph:Lcom/android/email/activity/setup/az;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/az;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/android/email/activity/setup/aA;->Ph:Lcom/android/email/activity/setup/az;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/az;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/aD;

    .line 101
    invoke-interface {v0}, Lcom/android/email/activity/setup/aD;->hI()V

    .line 102
    return-void
.end method
