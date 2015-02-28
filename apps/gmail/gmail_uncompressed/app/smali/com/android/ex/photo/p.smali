.class final Lcom/android/ex/photo/p;
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
    .line 972
    iput-object p1, p0, Lcom/android/ex/photo/p;->ahp:Lcom/android/ex/photo/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/ex/photo/p;->ahp:Lcom/android/ex/photo/k;

    invoke-static {v0}, Lcom/android/ex/photo/k;->b(Lcom/android/ex/photo/k;)V

    .line 976
    return-void
.end method
