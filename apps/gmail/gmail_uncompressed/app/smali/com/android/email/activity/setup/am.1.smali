.class final Lcom/android/email/activity/setup/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic OG:Lcom/android/email/activity/setup/ak;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/ak;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/email/activity/setup/am;->OG:Lcom/android/email/activity/setup/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/setup/am;->OG:Lcom/android/email/activity/setup/ak;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ak;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/an;

    .line 70
    invoke-interface {v0}, Lcom/android/email/activity/setup/an;->hZ()V

    .line 71
    iget-object v0, p0, Lcom/android/email/activity/setup/am;->OG:Lcom/android/email/activity/setup/ak;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ak;->dismiss()V

    .line 72
    return-void
.end method
