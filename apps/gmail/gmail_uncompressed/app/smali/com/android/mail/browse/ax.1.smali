.class final Lcom/android/mail/browse/ax;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic arN:Lcom/android/mail/browse/aw;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/aw;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mail/browse/ax;->arN:Lcom/android/mail/browse/aw;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mail/browse/ax;->arN:Lcom/android/mail/browse/aw;

    invoke-virtual {v0}, Lcom/android/mail/browse/aw;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
