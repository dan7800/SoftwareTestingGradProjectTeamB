.class final Lcom/android/ex/chips/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/ex/chips/L;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/ex/chips/L;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 245
    return-void
.end method
