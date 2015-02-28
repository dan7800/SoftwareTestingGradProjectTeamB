.class public final Lcom/android/mail/browse/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/mail/browse/O;",
            ">;"
        }
    .end annotation
.end field

.field private final apx:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/Q;->apw:Landroid/util/SparseArray;

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/Q;->apx:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/mail/browse/O;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mail/browse/Q;->apw:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public final at(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mail/browse/Q;->apx:Landroid/util/SparseArray;

    const v1, 0x7f04004d

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    return-void
.end method

.method public final bZ(I)Lcom/android/mail/browse/O;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/mail/browse/Q;->apw:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/O;

    return-object v0
.end method

.method public final qe()Landroid/view/View;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mail/browse/Q;->apx:Landroid/util/SparseArray;

    const v1, 0x7f04004d

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
