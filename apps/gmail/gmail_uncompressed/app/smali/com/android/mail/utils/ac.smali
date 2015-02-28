.class public final Lcom/android/mail/utils/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/text/Spannable;Landroid/view/View$OnClickListener;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 50
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 51
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 52
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 53
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 54
    new-instance v3, Lcom/android/mail/text/d;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/mail/text/d;-><init>(Landroid/view/View$OnClickListener;)V

    const/16 v6, 0x21

    invoke-interface {p0, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
