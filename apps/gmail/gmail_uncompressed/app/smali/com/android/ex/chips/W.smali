.class final Lcom/android/ex/chips/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic acQ:Lcom/android/ex/chips/ae;

.field final synthetic afi:Lcom/android/ex/chips/a/b;

.field final synthetic afj:Lcom/android/ex/chips/V;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/V;Lcom/android/ex/chips/a/b;Lcom/android/ex/chips/ae;)V
    .locals 0

    .prologue
    .line 2891
    iput-object p1, p0, Lcom/android/ex/chips/W;->afj:Lcom/android/ex/chips/V;

    iput-object p2, p0, Lcom/android/ex/chips/W;->afi:Lcom/android/ex/chips/a/b;

    iput-object p3, p0, Lcom/android/ex/chips/W;->acQ:Lcom/android/ex/chips/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/ex/chips/W;->afj:Lcom/android/ex/chips/V;

    iget-object v0, v0, Lcom/android/ex/chips/V;->afh:Lcom/android/ex/chips/U;

    iget-object v0, v0, Lcom/android/ex/chips/U;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/W;->afi:Lcom/android/ex/chips/a/b;

    iget-object v2, p0, Lcom/android/ex/chips/W;->acQ:Lcom/android/ex/chips/ae;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;Lcom/android/ex/chips/ae;)V

    .line 2895
    return-void
.end method
