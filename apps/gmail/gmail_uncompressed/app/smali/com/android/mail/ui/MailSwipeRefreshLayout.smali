.class public Lcom/android/mail/ui/MailSwipeRefreshLayout;
.super Landroid/support/v4/widget/W;
.source "SourceFile"


# instance fields
.field private aLg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/MailSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/W;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final aA(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mail/ui/MailSwipeRefreshLayout;->aLg:Landroid/view/View;

    .line 41
    return-void
.end method

.method public final cp()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mail/ui/MailSwipeRefreshLayout;->aLg:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
