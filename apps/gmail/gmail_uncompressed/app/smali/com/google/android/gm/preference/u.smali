.class final Lcom/google/android/gm/preference/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bbZ:Lcom/google/android/gm/preference/t;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/t;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/gm/preference/u;->bbZ:Lcom/google/android/gm/preference/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/gm/preference/u;->bbZ:Lcom/google/android/gm/preference/t;

    iget-object v0, v0, Lcom/google/android/gm/preference/t;->bbY:Lcom/google/android/gm/preference/q;

    invoke-virtual {v0}, Lcom/google/android/gm/preference/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/gm/preference/u;->bbZ:Lcom/google/android/gm/preference/t;

    iget-object v0, v0, Lcom/google/android/gm/preference/t;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->c(Lcom/google/android/gm/preference/q;)V

    .line 360
    :cond_0
    return-void
.end method
