.class public final Lcom/android/mail/ui/bX;
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
        "Lcom/android/mail/ui/bX;",
        ">;"
    }
.end annotation


# instance fields
.field public aKv:Ljava/lang/String;

.field private final aqp:Lcom/android/mail/providers/Folder;

.field private axa:Z


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Folder;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/mail/ui/bX;->aqp:Lcom/android/mail/providers/Folder;

    .line 63
    iput-boolean p2, p0, Lcom/android/mail/ui/bX;->axa:Z

    .line 64
    return-void
.end method

.method static synthetic c(Lcom/android/mail/ui/bX;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mail/ui/bX;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/android/mail/ui/bX;)I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bX;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/ui/bX;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final bx(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/mail/ui/bX;->axa:Z

    .line 76
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lcom/android/mail/ui/bX;

    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bX;->b(Lcom/android/mail/ui/bX;)I

    move-result v0

    return v0
.end method

.method public final isSelected()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/mail/ui/bX;->axa:Z

    return v0
.end method

.method public final vT()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mail/ui/bX;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method
