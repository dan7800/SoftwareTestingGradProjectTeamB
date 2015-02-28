.class final Lcom/android/ex/photo/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/c;


# instance fields
.field private final agq:Lcom/android/ex/photo/b;

.field final synthetic agr:Lcom/android/ex/photo/c;


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/c;Lcom/android/ex/photo/b;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/ex/photo/d;->agr:Lcom/android/ex/photo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/android/ex/photo/d;->agq:Lcom/android/ex/photo/b;

    .line 20
    return-void
.end method


# virtual methods
.method public final onMenuVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/ex/photo/d;->agq:Lcom/android/ex/photo/b;

    invoke-interface {v0, p1}, Lcom/android/ex/photo/b;->onMenuVisibilityChanged(Z)V

    .line 25
    return-void
.end method
