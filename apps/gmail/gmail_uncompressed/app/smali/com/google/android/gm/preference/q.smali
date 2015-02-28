.class public final Lcom/google/android/gm/preference/q;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/google/android/gm/X;


# instance fields
.field private Nr:Landroid/media/Ringtone;

.field private PS:Ljava/lang/String;

.field private aXZ:Ljava/lang/String;

.field private aYe:Ljava/lang/Object;

.field private aYg:Lcom/google/android/gm/W;

.field private final aYi:Landroid/content/SyncStatusObserver;

.field private bbU:Lcom/android/mail/i/e;

.field private bbV:Z

.field private bbW:Z

.field private bbX:Lcom/google/android/gm/preference/B;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->mHandler:Landroid/os/Handler;

    .line 349
    new-instance v0, Lcom/google/android/gm/preference/t;

    invoke-direct {v0, p0}, Lcom/google/android/gm/preference/t;-><init>(Lcom/google/android/gm/preference/q;)V

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->aYi:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method private CR()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/preference/g;->dN(Ljava/lang/String;)Lcom/google/android/gm/preference/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EnableAccountSyncDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/g;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private DK()V
    .locals 8

    .prologue
    const v7, 0x7f090367

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 391
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 392
    new-instance v1, Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    const-string v5, "com.google"

    invoke-direct {v1, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v4, "gmail-ls"

    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 396
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 426
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v0}, Lcom/google/android/gm/W;->Cu()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->aXZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v1}, Lcom/google/android/gm/W;->Cv()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gm/preference/q;->aXZ:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 428
    if-nez v0, :cond_6

    if-nez v4, :cond_6

    move v1, v2

    .line 430
    :goto_1
    const-string v5, "label-sync"

    invoke-virtual {p0, v5}, Lcom/google/android/gm/preference/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 433
    if-eqz v0, :cond_7

    .line 434
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f090397

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    const-string v0, "label-notifications-category"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 447
    if-nez v1, :cond_d

    .line 448
    iget-boolean v4, p0, Lcom/google/android/gm/preference/q;->bbW:Z

    if-eqz v4, :cond_c

    .line 449
    const-string v4, "notifications-enabled"

    invoke-virtual {p0, v4}, Lcom/google/android/gm/preference/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_9

    move v4, v2

    .line 453
    :goto_3
    if-nez v4, :cond_2

    .line 455
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 457
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 459
    iget-object v5, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    invoke-virtual {v5}, Lcom/android/mail/i/e;->to()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 461
    const-string v5, "notifications-enabled"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 464
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 465
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 467
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 468
    const-string v5, "notification-ringtone"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 470
    const v5, 0x7f09035e

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 471
    new-instance v5, Lcom/google/android/gm/preference/x;

    invoke-direct {v5, p0}, Lcom/google/android/gm/preference/x;-><init>(Lcom/google/android/gm/preference/q;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 479
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 480
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 481
    const-string v5, "notifications-enabled"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 484
    iget-boolean v4, p0, Lcom/google/android/gm/preference/q;->bbV:Z

    if-eqz v4, :cond_1

    .line 485
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 488
    const-string v5, "notification-vibrate"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 490
    const v5, 0x7f0902b8

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 491
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 492
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 493
    const-string v5, "notifications-enabled"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 497
    :cond_1
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 499
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 500
    const-string v5, "notification-notify-every-message"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 502
    const v5, 0x7f09033e

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 504
    const v5, 0x7f09033d

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 505
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 506
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 507
    const-string v0, "notifications-enabled"

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 515
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/preference/q;->bbW:Z

    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 517
    :goto_4
    const-string v0, "notifications-enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 520
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 522
    const-string v0, "notification-ringtone"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 524
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->Nr:Landroid/media/Ringtone;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 555
    :goto_6
    return-void

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    if-nez v1, :cond_4

    .line 402
    new-instance v1, Lcom/google/android/gm/preference/B;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/gm/preference/B;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    .line 403
    iget-object v1, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    invoke-virtual {v1, v3}, Lcom/google/android/gm/preference/B;->setOrder(I)V

    .line 404
    if-eqz v0, :cond_5

    .line 406
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    const v1, 0x7f090394

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/B;->setSummary(I)V

    .line 413
    :goto_7
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    new-instance v1, Lcom/google/android/gm/preference/w;

    invoke-direct {v1, p0}, Lcom/google/android/gm/preference/w;-><init>(Lcom/google/android/gm/preference/q;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/B;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 423
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->bbX:Lcom/google/android/gm/preference/B;

    const v1, 0x7f090393

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/B;->setSummary(I)V

    goto :goto_7

    :cond_6
    move v1, v3

    .line 428
    goto/16 :goto_1

    .line 435
    :cond_7
    if-eqz v4, :cond_8

    .line 436
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f11001e

    iget-object v6, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v6}, Lcom/google/android/gm/W;->Cw()I

    move-result v6

    invoke-static {v0, v4, v6}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 440
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f090398

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    move v4, v3

    .line 449
    goto/16 :goto_3

    :cond_a
    move v2, v3

    .line 515
    goto/16 :goto_4

    .line 524
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09017e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 527
    :cond_c
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 530
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 532
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 533
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 534
    const v0, 0x7f090368

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 535
    new-instance v0, Lcom/google/android/gm/preference/y;

    invoke-direct {v0, p0}, Lcom/google/android/gm/preference/y;-><init>(Lcom/google/android/gm/preference/q;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_6

    .line 547
    :cond_d
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 549
    new-instance v1, Lcom/google/android/gm/preference/z;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gm/preference/z;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 552
    const v0, 0x7f090399

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_6
.end method

.method public static J(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gm/preference/q;

    invoke-direct {v0}, Lcom/google/android/gm/preference/q;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "label"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/preference/q;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/gm/LabelSynchronizationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "folder"

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->aXZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "included-labels"

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v2}, Lcom/google/android/gm/W;->Cu()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "partial-labels"

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v2}, Lcom/google/android/gm/W;->Cv()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "num-of-sync-days"

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v2}, Lcom/google/android/gm/W;->Cw()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/preference/q;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/preference/q;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->notifyObservers()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gm/preference/q;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->DK()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gm/preference/q;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/preference/q;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/preference/q;->bbW:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gm/preference/q;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gm/preference/q;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/gm/preference/q;->bbW:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gm/preference/q;)Lcom/android/mail/i/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gm/preference/q;)V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->CR()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmail-ls"

    invoke-static {v0, v1}, Lcom/android/mail/ui/dp;->b(Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/mail/ui/dp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "auto sync"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/dp;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/google/android/gm/preference/q;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    invoke-virtual {v1}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/preference/q;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gm/preference/q;)V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090369

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/preference/q;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012b

    new-instance v2, Lcom/google/android/gm/preference/v;

    invoke-direct {v2, p0}, Lcom/google/android/gm/preference/v;-><init>(Lcom/google/android/gm/preference/q;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private notifyObservers()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    invoke-virtual {v0}, Lcom/android/mail/i/e;->to()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/preference/A;->O(Landroid/content/Context;Ljava/lang/String;)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v0}, Lcom/google/android/gm/W;->notifyChanged()V

    .line 627
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/W;

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    .line 110
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v0, p0}, Lcom/google/android/gm/W;->a(Lcom/google/android/gm/X;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/preference/i;

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    invoke-virtual {v2}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->Nr:Landroid/media/Ringtone;

    :cond_0
    invoke-virtual {v1}, Lcom/android/mail/i/a;->to()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/preference/q;->bbW:Z

    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->DK()V

    .line 113
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 569
    packed-switch p1, :pswitch_data_0

    .line 601
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->notifyObservers()V

    .line 602
    return-void

    .line 571
    :pswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 572
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 573
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/e;->bE(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->Nr:Landroid/media/Ringtone;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mail/i/e;->bE(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->Nr:Landroid/media/Ringtone;

    goto :goto_0

    .line 577
    :pswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    const-string v1, "included-labels"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/W;->i(Ljava/util/ArrayList;)V

    .line 580
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    const-string v1, "partial-labels"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/W;->j(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 585
    :pswitch_2
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 586
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v2, "gmail-ls"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 595
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->CR()V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onChanged()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->DK()V

    .line 565
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 128
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->aXZ:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/preference/q;->aXZ:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/google/android/gm/preference/q;->aXZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    new-instance v2, Lcom/google/android/gm/preference/j;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    iput-object v2, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/preference/q;->bbV:Z

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/q;->bbU:Lcom/android/mail/i/e;

    invoke-virtual {v1}, Lcom/android/mail/i/e;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 146
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/q;->addPreferencesFromResource(I)V

    .line 148
    const-string v0, "label-sync"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/preference/r;

    invoke-direct {v1, p0}, Lcom/google/android/gm/preference/r;-><init>(Lcom/google/android/gm/preference/q;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v0, p0}, Lcom/google/android/gm/W;->b(Lcom/google/android/gm/X;)V

    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 119
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYe:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return v1

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 204
    const-string v0, "label-sync"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 206
    const-string v0, "notifications-enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    const-string v0, "notification-ringtone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 210
    const-string v0, "notification-vibrate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    const-string v0, "notification-notify-every-message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 222
    :goto_1
    const-string v4, "notifications-enabled"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v5

    .line 229
    new-instance v6, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v3}, Lcom/google/android/gm/W;->Cu()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    iget-object v3, p0, Lcom/google/android/gm/preference/q;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v3}, Lcom/google/android/gm/W;->Cv()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual {v5}, Lcom/google/android/gm/provider/U;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_2
    if-ltz v4, :cond_4

    .line 236
    invoke-virtual {v5, v4}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-static {v3, v9, v8}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v3

    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 241
    new-instance v10, Lcom/google/android/gm/preference/j;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v3, v9}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 244
    invoke-virtual {v10}, Lcom/android/mail/i/e;->to()Z

    move-result v9

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    .line 255
    :goto_3
    if-eqz v9, :cond_3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gm/preference/q;->aXZ:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 261
    :goto_4
    if-nez v2, :cond_1

    .line 262
    new-instance v2, Lcom/google/android/gm/preference/i;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/q;->PS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    iput-boolean v1, p0, Lcom/google/android/gm/preference/q;->bbW:Z

    .line 267
    iget-boolean v1, p0, Lcom/google/android/gm/preference/q;->bbW:Z

    invoke-virtual {v2, v1}, Lcom/android/mail/i/a;->aW(Z)V

    .line 269
    invoke-direct {p0}, Lcom/google/android/gm/preference/q;->DK()V

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/preference/q;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/preference/s;

    invoke-direct {v2, p0}, Lcom/google/android/gm/preference/s;-><init>(Lcom/google/android/gm/preference/q;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v0

    .line 281
    goto/16 :goto_0

    :cond_2
    move v3, v1

    .line 247
    goto :goto_3

    .line 235
    :cond_3
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_1
.end method

.method public final onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 286
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 288
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "label-sync"

    aput-object v2, v1, v0

    const-string v2, "notifications-enabled"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "notification-ringtone"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "notification-vibrate"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "notification-notify-every-message"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/google/android/gm/preference/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/preference/q;->aYi:Landroid/content/SyncStatusObserver;

    invoke-static {v4, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/q;->aYe:Ljava/lang/Object;

    .line 296
    return-void
.end method
