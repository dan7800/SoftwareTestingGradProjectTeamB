.class final Lcom/google/android/gm/ui/c;
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
    .line 64
    iput-object p1, p0, Lcom/google/android/gm/ui/c;->bpv:Lcom/google/android/gm/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gm/ui/c;->bpv:Lcom/google/android/gm/ui/a;

    invoke-static {v0}, Lcom/google/android/gm/ui/a;->a(Lcom/google/android/gm/ui/a;)V

    .line 68
    return-void
.end method
