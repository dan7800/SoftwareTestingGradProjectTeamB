.class final Lcom/android/mail/browse/Y;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aqB:Lcom/android/mail/browse/W;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/W;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/mail/browse/Y;->aqB:Lcom/android/mail/browse/W;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/W;B)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/android/mail/browse/Y;-><init>(Lcom/android/mail/browse/W;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/mail/browse/Y;->aqB:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->notifyDataSetChanged()V

    .line 575
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method
