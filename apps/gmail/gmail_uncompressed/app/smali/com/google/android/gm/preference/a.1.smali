.class public final Lcom/google/android/gm/preference/a;
.super Lcom/android/mail/ui/settings/c;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/mail/ui/ds;
.implements Lcom/google/android/gm/preference/e;
.implements Lcom/google/android/gm/preference/o;


# instance fields
.field private PS:Ljava/lang/String;

.field private aHs:Lcom/android/mail/i/a;

.field private aWK:Lcom/google/android/gm/persistence/b;

.field private aWU:Lcom/google/android/gm/provider/Gmail$Settings;

.field private bbs:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mail/ui/settings/c;-><init>()V

    return-void
.end method

.method private DF()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string v0, "inbox-type"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 191
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v3

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gm/persistence/b;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 198
    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->Fx()Z

    move-result v4

    .line 200
    const-string v5, "default"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_0

    if-eqz v4, :cond_6

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v4, "inbox-categories"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gm/preference/a;->bbs:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_1
    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->Fu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v2

    .line 214
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/ai;

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gm/provider/ai;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 223
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-static {v1, v0}, Lcom/google/android/gm/provider/T;->U(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    :cond_3
    const-string v0, "^sq_ig_i_personal"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_1

    .line 230
    :cond_4
    const v0, 0x7f090129

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/google/android/gm/preference/a;->bbs:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    :goto_3
    const-string v0, "number-picker"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/preference/IntegerPickerPreference;

    .line 242
    iget-object v2, p0, Lcom/google/android/gm/preference/a;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->Ey()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gm/preference/IntegerPickerPreference;->a(Lcom/google/android/gm/preference/o;I)V

    .line 245
    const-string v0, "signature"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v4, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gm/persistence/b;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Lcom/android/mail/ui/settings/g;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/google/android/gm/preference/a;->DG()V

    .line 252
    const-string v0, "vacation-responder"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->GB()Lcom/google/android/gm/provider/bH;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gm/provider/bH;->enabled:Z

    if-eqz v1, :cond_a

    iget-wide v4, v0, Lcom/google/android/gm/provider/bH;->bnr:J

    iget-wide v6, v0, Lcom/google/android/gm/provider/bH;->bns:J

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-wide v0, v0, Lcom/google/android/gm/provider/bH;->bns:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-gtz v0, :cond_7

    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/preference/a;->Y(J)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901b7

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v0, v4, v13

    invoke-virtual {v8, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    :goto_5
    const-string v0, "show-images-in-cv"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 256
    if-eqz v0, :cond_5

    .line 257
    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->FZ()Lcom/google/android/gm/provider/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/ae;->FB()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 258
    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->FZ()Lcom/google/android/gm/provider/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/ae;->FC()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "always"

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    :cond_5
    :goto_7
    return-void

    .line 236
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->bbs:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 252
    :cond_7
    invoke-static {v4, v5}, Lcom/google/android/gm/preference/a;->M(J)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v6, v7}, Lcom/google/android/gm/preference/a;->M(J)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/preference/a;->Z(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/preference/a;->Z(J)Ljava/lang/String;

    move-result-object v0

    :goto_8
    const v4, 0x7f0901b8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v13

    aput-object v0, v5, v12

    invoke-virtual {v8, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/preference/a;->Y(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/preference/a;->Y(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_a
    const v0, 0x7f0901b6

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 258
    :cond_b
    const-string v1, "ask"

    goto :goto_6

    .line 263
    :cond_c
    const-string v1, "data-usage"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7
.end method

.method private DG()V
    .locals 4

    .prologue
    .line 455
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 457
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v2, "gmail-ls"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 460
    const-string v2, "sync_status"

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/google/android/gm/preference/a;->l(Ljava/lang/String;Z)V

    .line 462
    const-string v0, "sync_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 464
    if-eqz v1, :cond_1

    .line 465
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    :goto_1
    return-void

    .line 460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_1
    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private static M(J)Z
    .locals 4

    .prologue
    .line 316
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 317
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 319
    iget v1, v0, Landroid/text/format/Time;->year:I

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 322
    iget v0, v0, Landroid/text/format/Time;->year:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Z(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x80004

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/preference/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/preference/a;Lcom/google/android/gm/provider/U;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gm/provider/U;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v6, Lcom/google/android/gm/preference/j;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v4, v5}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    invoke-virtual {v6}, Lcom/android/mail/i/e;->to()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/preference/c;->dM(Ljava/lang/String;)Lcom/google/android/gm/preference/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/preference/c;->a(Lcom/google/android/gm/preference/e;)V

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DisableAccountNotificationsDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/preference/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v0, v1}, Lcom/android/mail/i/a;->aW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/preference/A;->O(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private bV(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 539
    const-string v0, "inbox-settings"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 540
    if-eqz v2, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 545
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 548
    :goto_0
    iget-object v3, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v4, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 553
    if-eqz v0, :cond_3

    .line 554
    const-string v0, "priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    const v0, 0x7f090362

    .line 570
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 573
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    :cond_0
    return-void

    .line 545
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 558
    :cond_2
    const v0, 0x7f090360

    goto :goto_1

    .line 561
    :cond_3
    const-string v0, "priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    const v0, 0x7f090363

    goto :goto_1

    .line 566
    :cond_4
    const v0, 0x7f090361

    goto :goto_1
.end method

.method private dL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 586
    :cond_0
    return-void
.end method

.method private i(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 518
    const-string v0, "notifications-enabled"

    iget-object v1, p0, Lcom/google/android/gm/preference/a;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v1}, Lcom/android/mail/i/a;->to()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/preference/a;->l(Ljava/lang/String;Z)V

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 524
    const-string v1, "notifications-enabled"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_0

    .line 528
    if-nez v0, :cond_1

    .line 529
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 535
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/preference/a;->bV(Landroid/content/Context;)V

    .line 536
    return-void

    .line 531
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private l(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 640
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 643
    :cond_0
    return-void
.end method


# virtual methods
.method public final An()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "sync_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 474
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method

.method public final Ao()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "sync_status"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/preference/a;->l(Ljava/lang/String;Z)V

    .line 480
    return-void
.end method

.method public final DH()V
    .locals 2

    .prologue
    .line 633
    const-string v0, "notifications-enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 635
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v1}, Lcom/android/mail/i/a;->to()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 636
    return-void
.end method

.method public final dB(I)V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/Gmail$Settings;->ai(J)V

    .line 618
    invoke-direct {p0}, Lcom/google/android/gm/preference/a;->DF()V

    .line 619
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/c;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    .line 96
    new-instance v0, Lcom/google/android/gm/preference/i;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/preference/a;->aHs:Lcom/android/mail/i/a;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/a;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    .line 109
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->addPreferencesFromResource(I)V

    .line 111
    const-string v0, "inbox-categories"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/a;->bbs:Landroid/preference/Preference;

    .line 112
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->bbs:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 602
    invoke-super {p0}, Lcom/android/mail/ui/settings/c;->onDestroy()V

    .line 603
    return-void
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 607
    invoke-super {p0}, Lcom/android/mail/ui/settings/c;->onPause()V

    .line 609
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/preference/a;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;Landroid/content/ContentResolver;)V

    .line 610
    return-void
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "signature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gm/persistence/b;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/google/android/gm/preference/a;->DF()V

    move v1, v6

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    const-string v3, "inbox-type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    check-cast p2, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v6}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 136
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 137
    aget-object v3, v2, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 145
    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gm/persistence/b;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gm/preference/a;->i(Landroid/app/Activity;)V

    .line 155
    const-string v1, "^sq_ig_i_personal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Fu()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 161
    :goto_2
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/preference/A;->O(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/google/android/gm/preference/a;->DF()V

    :cond_3
    move v1, v6

    .line 169
    goto/16 :goto_0

    .line 158
    :cond_4
    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    goto :goto_2

    .line 169
    :cond_5
    const-string v3, "show-images-in-cv"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    check-cast p1, Landroid/preference/ListPreference;

    .line 171
    check-cast p2, Ljava/lang/String;

    .line 172
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->FZ()Lcom/google/android/gm/provider/ae;

    move-result-object v1

    const-string v2, "always"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/ae;->bV(Z)V

    .line 178
    iget-object v1, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->R(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v6

    .line 179
    goto/16 :goto_0
.end method

.method public final onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 327
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 332
    :cond_0
    const-string v2, "notifications-enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    const-string v0, "notifications-enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 335
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 341
    if-nez v0, :cond_1

    .line 346
    new-instance v0, Lcom/google/android/gm/preference/b;

    invoke-direct {v0, p0}, Lcom/google/android/gm/preference/b;-><init>(Lcom/google/android/gm/preference/a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/preference/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v0, v1

    .line 412
    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 365
    new-instance v2, Lcom/google/android/gm/preference/j;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 367
    invoke-virtual {v2, v1}, Lcom/android/mail/i/e;->aW(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/preference/a;->bV(Landroid/content/Context;)V

    .line 371
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v0, v1}, Lcom/android/mail/i/a;->aW(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/preference/A;->O(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_2
    const-string v2, "prefetch-attachments"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 377
    iget-object v0, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 378
    :cond_3
    const-string v2, "manage-labels"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    const-string v2, "account_key"

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 382
    :cond_4
    const-string v2, "inbox-settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 383
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    const-string v3, "account_key"

    iget-object v4, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v3, "label"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/a;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 388
    :cond_5
    const-string v2, "sync_status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 389
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 390
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    if-nez v0, :cond_6

    .line 395
    const-string v0, "gmail-ls"

    invoke-static {v2, v0}, Lcom/android/mail/ui/dp;->b(Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/mail/ui/dp;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dp;->a(Lcom/android/mail/ui/ds;)V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "auto sync"

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/ui/dp;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 400
    :cond_6
    const-string v0, "sync_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 402
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 403
    const-string v3, "gmail-ls"

    invoke-static {v2, v3, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 405
    :cond_7
    const-string v2, "vacation-responder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/google/android/gm/vacation/VacationResponderActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    const-string v2, "account_key"

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 410
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/settings/c;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final onResume()V
    .locals 4

    .prologue
    .line 484
    invoke-super {p0}, Lcom/android/mail/ui/settings/c;->onResume()V

    .line 485
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 487
    invoke-direct {p0}, Lcom/google/android/gm/preference/a;->DG()V

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    const-string v2, "manage-labels"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 490
    :cond_0
    const-string v0, "prefetch-attachments"

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gm/persistence/b;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/preference/a;->l(Ljava/lang/String;Z)V

    .line 492
    const-string v0, "signature"

    iget-object v2, p0, Lcom/google/android/gm/preference/a;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v3, p0, Lcom/google/android/gm/preference/a;->PS:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gm/persistence/b;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 493
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gm/preference/a;->i(Landroid/app/Activity;)V

    .line 495
    const-string v0, "inbox-type"

    invoke-direct {p0, v0}, Lcom/google/android/gm/preference/a;->dL(Ljava/lang/String;)V

    .line 496
    const-string v0, "signature"

    invoke-direct {p0, v0}, Lcom/google/android/gm/preference/a;->dL(Ljava/lang/String;)V

    .line 497
    const-string v0, "show-images-in-cv"

    invoke-direct {p0, v0}, Lcom/google/android/gm/preference/a;->dL(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/google/android/gm/preference/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DisableAccountNotificationsDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/preference/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/google/android/gm/preference/c;->a(Lcom/google/android/gm/preference/e;)V

    .line 501
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/preference/a;->DF()V

    .line 502
    return-void

    .line 488
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
