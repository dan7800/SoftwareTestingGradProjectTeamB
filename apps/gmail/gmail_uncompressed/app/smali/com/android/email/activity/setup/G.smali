.class final Lcom/android/email/activity/setup/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/email/activity/setup/G;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/email/activity/setup/G;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v1, p0, Lcom/android/email/activity/setup/G;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->b(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->b(Lcom/android/mail/providers/Account;)V

    .line 714
    const/4 v0, 0x1

    return v0
.end method
