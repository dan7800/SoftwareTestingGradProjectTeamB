.class final Lcom/google/android/gm/preference/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bca:Lcom/google/android/gm/preference/B;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/B;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gm/preference/C;->bca:Lcom/google/android/gm/preference/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gm/preference/C;->bca:Lcom/google/android/gm/preference/B;

    invoke-virtual {v0}, Lcom/google/android/gm/preference/B;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/google/android/gm/preference/C;->bca:Lcom/google/android/gm/preference/B;

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 54
    :cond_0
    return-void
.end method
