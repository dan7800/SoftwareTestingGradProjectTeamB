.class final Lcom/android/email/activity/setup/aR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic PA:Lcom/android/email/activity/setup/aQ;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aQ;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/email/activity/setup/aR;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/email/activity/setup/aR;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->c(Lcom/android/email/activity/setup/aQ;)Landroid/preference/ListPreference;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/email/activity/setup/aR;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->c(Lcom/android/email/activity/setup/aQ;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/aR;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v1}, Lcom/android/email/activity/setup/aQ;->c(Lcom/android/email/activity/setup/aQ;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 423
    const/4 v0, 0x0

    return v0
.end method
