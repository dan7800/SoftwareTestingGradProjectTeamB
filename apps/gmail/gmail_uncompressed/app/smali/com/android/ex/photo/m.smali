.class final Lcom/android/ex/photo/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ahp:Lcom/android/ex/photo/k;


# direct methods
.method constructor <init>(Lcom/android/ex/photo/k;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/ex/photo/m;->ahp:Lcom/android/ex/photo/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 699
    iget-object v0, p0, Lcom/android/ex/photo/m;->ahp:Lcom/android/ex/photo/k;

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/photo/k;->d(ZZ)V

    .line 700
    return-void
.end method
