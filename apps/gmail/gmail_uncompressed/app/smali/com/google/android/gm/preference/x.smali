.class final Lcom/google/android/gm/preference/x;
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
    .line 471
    iput-object p1, p0, Lcom/google/android/gm/preference/x;->bbY:Lcom/google/android/gm/preference/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/gm/preference/x;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->j(Lcom/google/android/gm/preference/q;)V

    .line 476
    const/4 v0, 0x1

    return v0
.end method
