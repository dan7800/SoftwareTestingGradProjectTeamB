.class final Lcom/google/android/gm/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aXX:Lcom/google/android/gm/G;


# direct methods
.method constructor <init>(Lcom/google/android/gm/G;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/gm/H;->aXX:Lcom/google/android/gm/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gm/H;->aXX:Lcom/google/android/gm/G;

    invoke-virtual {v0}, Lcom/google/android/gm/G;->dismiss()V

    .line 26
    return-void
.end method
