.class final Lcom/android/email/activity/setup/aZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic PQ:Lcom/android/email/activity/setup/aX;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aX;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/email/activity/setup/aZ;->PQ:Lcom/android/email/activity/setup/aX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/setup/aZ;->PQ:Lcom/android/email/activity/setup/aX;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aX;->dismiss()V

    .line 84
    iget-object v0, p0, Lcom/android/email/activity/setup/aZ;->PQ:Lcom/android/email/activity/setup/aX;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aX;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ba;

    .line 85
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/ba;->Y(Z)V

    .line 86
    return-void
.end method
