.class public Lcom/android/mail/ui/settings/GeneralPrefsFragment;
.super Lcom/android/mail/ui/settings/f;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final aOQ:[I


# instance fields
.field protected aHo:Lcom/android/mail/i/g;

.field private aOO:Landroid/app/AlertDialog;

.field private aOP:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOQ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mail/ui/settings/f;-><init>()V

    return-void
.end method

.method private varargs u([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 247
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 249
    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOO:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/android/mail/ui/settings/b;

    invoke-direct {v1, p0, v0}, Lcom/android/mail/ui/settings/b;-><init>(Lcom/android/mail/ui/settings/GeneralPrefsFragment;Landroid/content/Context;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/settings/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901df

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/f;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->setHasOptionsMenu(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aHo:Lcom/android/mail/i/g;

    .line 79
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v1}, Lcom/android/mail/i/g;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 82
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->addPreferencesFromResource(I)V

    .line 84
    const-string v0, "auto-advance-widget"

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOP:Landroid/preference/ListPreference;

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 94
    const v0, 0x7f10000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 95
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 100
    const v2, 0x7f0d0294

    if-ne v1, v2, :cond_0

    .line 101
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901e1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901e0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012d

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012c

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOO:Landroid/app/AlertDialog;

    .line 108
    :goto_0
    return v0

    .line 103
    :cond_0
    const v2, 0x7f0d0295

    if-ne v1, v2, :cond_1

    .line 104
    invoke-static {}, Lcom/android/mail/ui/settings/a;->AN()Lcom/android/mail/ui/settings/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ClearPictureApprovalsDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/ui/settings/a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/f;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string v2, "removal-action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v1, v0}, Lcom/android/mail/i/g;->bF(Ljava/lang/String;)V

    .line 138
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    const-string v2, "auto-advance-widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    sget-object v0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOQ:[I

    iget-object v1, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOP:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget v0, v0, v1

    .line 127
    iget-object v1, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v1, v0}, Lcom/android/mail/i/g;->cu(I)V

    goto :goto_1

    .line 128
    :cond_3
    const-string v2, "conversation-list-swipe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "conversation-list-sender-image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "default-reply-all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "conversation-overview-mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "confirm-delete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "confirm-archive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "confirm-send"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/mail/ui/settings/f;->onResume()V

    .line 199
    sget-object v2, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOQ:[I

    iget-object v0, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tP()I

    move-result v3

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget v4, v2, v0

    if-ne v4, v3, :cond_1

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOP:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 203
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "removal-action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "conversation-list-swipe"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "conversation-list-sender-image"

    aput-object v2, v0, v1

    const-string v1, "default-reply-all"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "conversation-overview-mode"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "auto-advance-widget"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "confirm-delete"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "confirm-archive"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "confirm-send"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->u([Ljava/lang/String;)V

    .line 214
    return-void

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t map preference value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget v4, v2, v0

    if-eq v4, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t map default preference value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/mail/ui/settings/f;->onStop()V

    .line 185
    iget-object v0, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOO:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOO:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/mail/ui/settings/GeneralPrefsFragment;->aOO:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method
