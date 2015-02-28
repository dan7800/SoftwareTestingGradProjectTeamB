.class final Lcom/android/ex/photo/n;
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
    .line 897
    iput-object p1, p0, Lcom/android/ex/photo/n;->ahp:Lcom/android/ex/photo/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/ex/photo/n;->ahp:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->onEnterAnimationComplete()V

    .line 901
    return-void
.end method
