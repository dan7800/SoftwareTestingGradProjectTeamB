.class final Lcom/google/android/gm/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aXW:Lcom/google/android/gm/GviewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/GviewActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/gm/F;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gm/F;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/GviewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/google/android/gm/F;->aXW:Lcom/google/android/gm/GviewActivity;

    const-string v0, "alert-dialog"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    invoke-static {v2, v0}, Lcom/google/android/gm/GviewActivity;->a(Lcom/google/android/gm/GviewActivity;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 168
    iget-object v0, p0, Lcom/google/android/gm/F;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-static {v0}, Lcom/google/android/gm/GviewActivity;->c(Lcom/google/android/gm/GviewActivity;)Landroid/app/DialogFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/gm/F;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-static {}, Lcom/google/android/gm/G;->CM()Lcom/google/android/gm/G;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gm/GviewActivity;->a(Lcom/google/android/gm/GviewActivity;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 170
    iget-object v0, p0, Lcom/google/android/gm/F;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-static {v0}, Lcom/google/android/gm/GviewActivity;->c(Lcom/google/android/gm/GviewActivity;)Landroid/app/DialogFragment;

    move-result-object v0

    const-string v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method
