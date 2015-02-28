.class final Lcom/android/email/activity/setup/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

.field final synthetic Nv:Landroid/preference/PreferenceCategory;

.field final synthetic Nw:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/email/activity/setup/I;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/I;->Nv:Landroid/preference/PreferenceCategory;

    iput-object p3, p0, Lcom/android/email/activity/setup/I;->Nw:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/email/activity/setup/I;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->g(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/I;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 873
    iget-object v0, p0, Lcom/android/email/activity/setup/I;->Nv:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/email/activity/setup/I;->Nv:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/email/activity/setup/I;->Nw:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 876
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
