.class final Lcom/google/android/gm/preference/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic bbY:Lcom/google/android/gm/preference/q;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/q;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/gm/preference/r;->bbY:Lcom/google/android/gm/preference/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gm/preference/r;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->a(Lcom/google/android/gm/preference/q;)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method
