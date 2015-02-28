.class final Lcom/android/ex/chips/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic afb:Lcom/android/ex/chips/P;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/P;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/ex/chips/Q;->afb:Lcom/android/ex/chips/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/ex/chips/Q;->afb:Lcom/android/ex/chips/P;

    iget-object v0, v0, Lcom/android/ex/chips/P;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->invalidate()V

    .line 824
    return-void
.end method
