.class final Lcom/android/mail/compose/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/mail/compose/h;->awi:Lcom/android/mail/compose/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 352
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/mail/compose/h;->awi:Lcom/android/mail/compose/g;

    invoke-static {v1}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/g;)V

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
