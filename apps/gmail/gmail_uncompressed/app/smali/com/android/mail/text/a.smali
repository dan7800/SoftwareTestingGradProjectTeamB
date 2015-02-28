.class public final Lcom/android/mail/text/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private final arl:Lcom/android/mail/browse/ag;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ag;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/mail/text/a;->arl:Lcom/android/mail/browse/ag;

    .line 19
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/mail/text/a;->arl:Lcom/android/mail/browse/ag;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/mail/text/a;->arl:Lcom/android/mail/browse/ag;

    invoke-interface {v0}, Lcom/android/mail/browse/ag;->qU()V

    .line 26
    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
