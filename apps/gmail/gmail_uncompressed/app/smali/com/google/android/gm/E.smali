.class final Lcom/google/android/gm/E;
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
    .line 133
    iput-object p1, p0, Lcom/google/android/gm/E;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gm/E;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-static {v0}, Lcom/google/android/gm/GviewActivity;->a(Lcom/google/android/gm/GviewActivity;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/google/android/gm/E;->aXW:Lcom/google/android/gm/GviewActivity;

    invoke-static {v0}, Lcom/google/android/gm/GviewActivity;->b(Lcom/google/android/gm/GviewActivity;)Landroid/app/DialogFragment;

    .line 138
    return-void
.end method
