.class public final Lcom/android/mail/browse/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/ListAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final AV:Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final arO:I


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/mail/browse/ay;->AV:Landroid/widget/ListAdapter;

    .line 45
    iput p2, p0, Lcom/android/mail/browse/ay;->arO:I

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/ay;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/mail/browse/ay;->arO:I

    return v0
.end method

.method static synthetic b(Lcom/android/mail/browse/ay;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mail/browse/ay;->AV:Landroid/widget/ListAdapter;

    return-object v0
.end method
