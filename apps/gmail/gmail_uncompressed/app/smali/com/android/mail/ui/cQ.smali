.class final Lcom/android/mail/ui/cQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/mail/ui/cQ;",
        ">;"
    }
.end annotation


# static fields
.field private static final aMN:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final aMO:I

.field private final aqp:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/mail/ui/cQ;->aMN:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/android/mail/ui/cQ;->aqp:Lcom/android/mail/providers/Folder;

    .line 267
    sget-object v0, Lcom/android/mail/ui/cQ;->aMN:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/cQ;->aMO:I

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/cQ;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mail/ui/cQ;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 259
    check-cast p1, Lcom/android/mail/ui/cQ;

    iget v0, p1, Lcom/android/mail/ui/cQ;->aMO:I

    iget v1, p0, Lcom/android/mail/ui/cQ;->aMO:I

    sub-int/2addr v0, v1

    return v0
.end method
