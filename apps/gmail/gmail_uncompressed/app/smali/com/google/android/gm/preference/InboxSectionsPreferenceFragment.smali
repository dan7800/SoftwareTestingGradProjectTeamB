.class public final Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;
.super Lcom/android/mail/ui/settings/f;
.source "SourceFile"


# instance fields
.field private bbE:Lcom/google/android/gm/provider/MailEngine;

.field private bbF:Landroid/preference/CheckBoxPreference;

.field private bbG:Landroid/preference/CheckBoxPreference;

.field private bbH:Landroid/preference/CheckBoxPreference;

.field private bbI:Landroid/preference/CheckBoxPreference;

.field private bbJ:Landroid/preference/CheckBoxPreference;

.field private bbK:Z

.field private bbL:Z

.field private bbM:Z

.field private bbN:Z

.field private bbO:Z

.field private mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/mail/ui/settings/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/f;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/f;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->mAccount:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    .line 69
    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 76
    const-string v0, "inbox-category-social"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbF:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string v0, "inbox-category-promo"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbG:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v0, "inbox-category-notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbH:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v0, "inbox-category-group"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbI:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v0, "inbox-sections-starred-in-personal"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbJ:Landroid/preference/CheckBoxPreference;

    .line 84
    iget-object v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Fu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Fw()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/ai;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ai;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    goto :goto_1

    :cond_1
    const-string v0, "^sq_ig_i_personal"

    invoke-virtual {v2, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    const-string v2, "^sq_ig_i_social"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbK:Z

    const-string v2, "^sq_ig_i_promo"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbL:Z

    const-string v2, "^sq_ig_i_notification"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbM:Z

    const-string v2, "^sq_ig_i_group"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbN:Z

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Fv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbO:Z

    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbF:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbK:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbG:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbL:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbH:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbM:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbI:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbN:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbJ:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbO:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public final onPause()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 128
    invoke-super {p0}, Lcom/android/mail/ui/settings/f;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 138
    iget-object v3, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 139
    iget-object v4, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 142
    iget-boolean v5, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbK:Z

    if-ne v5, v0, :cond_1

    iget-boolean v5, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbL:Z

    if-ne v5, v1, :cond_1

    iget-boolean v5, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbM:Z

    if-ne v5, v2, :cond_1

    iget-boolean v5, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbN:Z

    if-ne v5, v3, :cond_1

    iget-boolean v5, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbO:Z

    if-eq v5, v4, :cond_6

    .line 147
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v5

    .line 148
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v6

    .line 150
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 151
    const-string v7, "^sq_ig_i_personal"

    invoke-virtual {v6, v7}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 153
    if-eqz v0, :cond_2

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 155
    const-string v0, "^sq_ig_i_social"

    invoke-virtual {v6, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 157
    :cond_2
    if-eqz v1, :cond_3

    .line 158
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 159
    const-string v0, "^sq_ig_i_promo"

    invoke-virtual {v6, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 161
    :cond_3
    if-eqz v2, :cond_4

    .line 162
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 163
    const-string v0, "^sq_ig_i_notification"

    invoke-virtual {v6, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 165
    :cond_4
    if-eqz v3, :cond_5

    .line 166
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 167
    const-string v0, "^sq_ig_i_group"

    invoke-virtual {v6, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v5}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/util/Set;Ljava/util/Set;Z)V

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 175
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    iget-object v1, p0, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->t(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 178
    :cond_6
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Section configuration was not changed, so leave as is"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method
