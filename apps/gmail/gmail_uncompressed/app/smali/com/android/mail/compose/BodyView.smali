.class public Lcom/android/mail/compose/BodyView;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private avh:Lcom/android/mail/compose/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/BodyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/compose/f;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mail/compose/BodyView;->avh:Lcom/android/mail/compose/f;

    .line 56
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mail/compose/BodyView;->avh:Lcom/android/mail/compose/f;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/mail/compose/BodyView;->avh:Lcom/android/mail/compose/f;

    invoke-interface {v0, p1, p2}, Lcom/android/mail/compose/f;->N(II)Z

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 52
    return-void
.end method
