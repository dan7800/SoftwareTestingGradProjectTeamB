.class public final Lcom/android/mail/ui/bG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/k;


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;

.field private aJU:Lcom/android/mail/d/f;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/bB;)V
    .locals 0

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/mail/ui/bG;->aJT:Lcom/android/mail/ui/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(I)V
    .locals 0

    .prologue
    .line 1597
    return-void
.end method

.method public final Q(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1586
    return-void
.end method

.method public final R(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/mail/ui/bG;->aJU:Lcom/android/mail/d/f;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/android/mail/ui/bG;->aJU:Lcom/android/mail/d/f;

    invoke-virtual {v0}, Lcom/android/mail/d/f;->tb()V

    .line 1592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/bG;->aJU:Lcom/android/mail/d/f;

    .line 1594
    :cond_0
    return-void
.end method

.method public final a(Lcom/android/mail/d/f;)V
    .locals 0

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/android/mail/ui/bG;->aJU:Lcom/android/mail/d/f;

    .line 1580
    return-void
.end method

.method public final i(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1583
    return-void
.end method
