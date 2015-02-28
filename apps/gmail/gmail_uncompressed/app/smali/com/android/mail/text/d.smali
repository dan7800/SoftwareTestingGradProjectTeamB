.class public final Lcom/android/mail/text/d;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final aCM:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/mail/text/d;->aCM:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mail/text/d;->aCM:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/mail/text/d;->aCM:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 56
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 58
    return-void
.end method
