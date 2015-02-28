.class public Lcom/google/android/gm/preference/ExperimentalPrefsFragment;
.super Lcom/android/mail/ui/settings/f;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/mail/ui/settings/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/f;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/i/g;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 33
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->addPreferencesFromResource(I)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->setHasOptionsMenu(Z)V

    .line 36
    const-string v0, "notification-requires-us"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 39
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "notification-requires-us"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 41
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "notification-requires-us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "notification-requires-us"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 47
    return-void
.end method
