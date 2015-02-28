.class final Lcom/google/android/gm/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bpv:Lcom/google/android/gm/ui/a;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ui/a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gm/ui/b;->bpv:Lcom/google/android/gm/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/ui/b;->bpv:Lcom/google/android/gm/ui/a;

    invoke-virtual {v0}, Lcom/google/android/gm/ui/a;->dismiss()V

    .line 53
    return-void
.end method
