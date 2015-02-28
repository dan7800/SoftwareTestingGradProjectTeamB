.class final Lcom/android/mail/ui/bY;
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
        "Lcom/android/mail/ui/bY;",
        ">;"
    }
.end annotation


# instance fields
.field public aKw:Lcom/android/mail/ui/bX;

.field public final aKx:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/mail/ui/bY;",
            ">;"
        }
    .end annotation
.end field

.field public aKy:Z


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bX;)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bY;->aKx:Ljava/util/PriorityQueue;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/bY;->aKy:Z

    .line 161
    iput-object p1, p0, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    .line 162
    return-void
.end method


# virtual methods
.method final a(Lcom/android/mail/ui/bY;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mail/ui/bY;->aKx:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 155
    check-cast p1, Lcom/android/mail/ui/bY;

    iget-object v0, p0, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    iget-object v1, p1, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bX;->b(Lcom/android/mail/ui/bX;)I

    move-result v0

    return v0
.end method

.method final zz()Lcom/android/mail/ui/bY;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mail/ui/bY;->aKx:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bY;

    return-object v0
.end method
