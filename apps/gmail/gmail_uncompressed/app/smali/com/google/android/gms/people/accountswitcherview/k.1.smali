.class final Lcom/google/android/gms/people/accountswitcherview/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/u",
        "<",
        "Lcom/google/android/gms/people/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic chs:Lcom/google/android/gms/people/accountswitcherview/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/accountswitcherview/j;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/k;->chs:Lcom/google/android/gms/people/accountswitcherview/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/t;)V
    .locals 9

    .prologue
    .line 44
    check-cast p1, Lcom/google/android/gms/people/m;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/k;->chs:Lcom/google/android/gms/people/accountswitcherview/j;

    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/j;->chr:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-interface {p1}, Lcom/google/android/gms/people/m;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/people/m;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/people/accountswitcherview/j;->chr:Lcom/google/android/gms/people/accountswitcherview/i;

    iget-object v5, v0, Lcom/google/android/gms/people/accountswitcherview/j;->chr:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {v5}, Lcom/google/android/gms/people/accountswitcherview/i;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/people/accountswitcherview/j;->acw:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/people/accountswitcherview/j;->cgm:Ljava/lang/String;

    iget v8, v0, Lcom/google/android/gms/people/accountswitcherview/j;->chq:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/people/accountswitcherview/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Lcom/google/android/gms/people/accountswitcherview/i;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/people/accountswitcherview/p;Landroid/graphics/Bitmap;)V

    return-void
.end method
