.class public final Lcom/android/mail/utils/X;
.super Landroid/support/v4/f/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/f/o",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final aQu:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/f/o;-><init>()V

    .line 27
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/X;->aQu:Landroid/database/DataSetObservable;

    .line 28
    return-void
.end method


# virtual methods
.method public final Bb()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mail/utils/X;->aQu:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v4/f/o;->clear()V

    .line 53
    iget-object v0, p0, Lcom/android/mail/utils/X;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 54
    return-void
.end method

.method public final delete(I)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/f/o;->delete(I)V

    .line 59
    iget-object v0, p0, Lcom/android/mail/utils/X;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 60
    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v4/f/o;->put(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/android/mail/utils/X;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 66
    return-void
.end method

.method public final remove(I)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/f/o;->remove(I)V

    .line 71
    iget-object v0, p0, Lcom/android/mail/utils/X;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 72
    return-void
.end method

.method public final removeAt(I)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/f/o;->removeAt(I)V

    .line 77
    iget-object v0, p0, Lcom/android/mail/utils/X;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 78
    return-void
.end method
