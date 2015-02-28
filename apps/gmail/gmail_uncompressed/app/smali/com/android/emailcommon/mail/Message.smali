.class public abstract Lcom/android/emailcommon/mail/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/mail/c;
.implements Lcom/android/emailcommon/mail/j;


# static fields
.field public static final Xj:[Lcom/android/emailcommon/mail/Message;


# instance fields
.field protected Xk:Ljava/lang/String;

.field private Xl:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/emailcommon/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected Xm:Ljava/util/Date;

.field protected Xn:Lcom/android/emailcommon/mail/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    sput-object v0, Lcom/android/emailcommon/mail/Message;->Xj:[Lcom/android/emailcommon/mail/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->Xl:Ljava/util/HashSet;

    return-void
.end method

.method private lp()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/emailcommon/mail/Flag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->Xl:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->Xl:Ljava/util/HashSet;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->Xl:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Message;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 1

    .prologue
    .line 122
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->lp()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->lp()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;
.end method

.method public abstract ab(Ljava/lang/String;)V
.end method

.method public final ap(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/emailcommon/mail/Message;->Xk:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/emailcommon/mail/Message;->Xm:Ljava/util/Date;

    .line 59
    return-void
.end method

.method public final b(Lcom/android/emailcommon/mail/Flag;)Z
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->lp()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method

.method public abstract kT()Ljava/util/Date;
.end method

.method public abstract kU()[Lcom/android/emailcommon/mail/Address;
.end method

.method public abstract kV()[Lcom/android/emailcommon/mail/Address;
.end method

.method public abstract kW()Ljava/lang/String;
.end method

.method public final ln()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->Xk:Ljava/lang/String;

    return-object v0
.end method

.method public final lo()Ljava/util/Date;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->Xm:Ljava/util/Date;

    return-object v0
.end method

.method public final lq()[Lcom/android/emailcommon/mail/Flag;
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->lp()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Message;->Xk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
