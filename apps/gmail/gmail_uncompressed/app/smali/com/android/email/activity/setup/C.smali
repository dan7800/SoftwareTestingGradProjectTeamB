.class final Lcom/android/email/activity/setup/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Na:Lcom/android/email/activity/setup/AccountServerSettingsActivity;

.field final synthetic Nb:Lcom/android/email/activity/setup/B;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/B;Lcom/android/email/activity/setup/AccountServerSettingsActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/email/activity/setup/C;->Nb:Lcom/android/email/activity/setup/B;

    iput-object p2, p0, Lcom/android/email/activity/setup/C;->Na:Lcom/android/email/activity/setup/AccountServerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/email/activity/setup/C;->Na:Lcom/android/email/activity/setup/AccountServerSettingsActivity;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->a(Lcom/android/email/activity/setup/AccountServerSettingsActivity;)V

    .line 254
    iget-object v0, p0, Lcom/android/email/activity/setup/C;->Nb:Lcom/android/email/activity/setup/B;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/B;->dismiss()V

    .line 255
    return-void
.end method
