.class final Lcom/android/ex/chips/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/ex/chips/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic afd:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V
    .locals 0

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/android/ex/chips/S;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/S;->afd:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1970
    check-cast p1, Lcom/android/ex/chips/a/b;

    check-cast p2, Lcom/android/ex/chips/a/b;

    iget-object v0, p0, Lcom/android/ex/chips/S;->afd:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/chips/S;->afd:Landroid/text/Spannable;

    invoke-interface {v1, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
