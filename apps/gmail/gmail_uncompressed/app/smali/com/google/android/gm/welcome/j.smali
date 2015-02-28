.class final Lcom/google/android/gm/welcome/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/gm/welcome/j;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void
.end method
