.class public Lcom/android/email/mail/store/imap/d;
.super Lcom/android/email/mail/store/imap/b;
.source "SourceFile"


# static fields
.field public static final QZ:Lcom/android/email/mail/store/imap/d;


# instance fields
.field private Ra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/email/mail/store/imap/e;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/e;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/imap/d;->QZ:Lcom/android/email/mail/store/imap/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/b;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 203
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 205
    if-lez v0, :cond_0

    .line 206
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aX(I)Lcom/android/email/mail/store/imap/b;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/b;->js()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/email/mail/store/imap/d;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/b;->jt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    :cond_3
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    return-object p1
.end method

.method private f(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/b;
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 117
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/email/mail/store/imap/d;->a(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/b;

    .line 121
    :goto_1
    return-object v0

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final H(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/email/mail/store/imap/d;->a(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final I(Ljava/lang/String;)Lcom/android/email/mail/store/imap/d;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/store/imap/d;->f(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/b;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/d;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/d;->QZ:Lcom/android/email/mail/store/imap/d;

    goto :goto_0
.end method

.method public final J(Ljava/lang/String;)Lcom/android/email/mail/store/imap/i;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/imap/d;->g(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/android/email/mail/store/imap/b;)V
    .locals 2

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t add null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public final a(ILjava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 78
    if-nez p3, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/i;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final aX(I)Lcom/android/email/mail/store/imap/b;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/android/email/mail/store/imap/b;->QY:Lcom/android/email/mail/store/imap/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/b;

    goto :goto_0
.end method

.method public final aY(I)Lcom/android/email/mail/store/imap/d;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/d;->aX(I)Lcom/android/email/mail/store/imap/b;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/b;->js()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/d;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/d;->QZ:Lcom/android/email/mail/store/imap/d;

    goto :goto_0
.end method

.method public final aZ(I)Lcom/android/email/mail/store/imap/i;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/d;->aX(I)Lcom/android/email/mail/store/imap/b;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/b;->jt()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/i;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    goto :goto_0
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    const/4 v1, 0x1

    .line 167
    :cond_0
    return v1

    .line 162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/b;

    .line 174
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/b;->destroy()V

    goto :goto_0

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    .line 178
    :cond_1
    invoke-super {p0}, Lcom/android/email/mail/store/imap/b;->destroy()V

    .line 179
    return-void
.end method

.method public final flatten()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/d;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/store/imap/d;->f(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/b;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/i;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final js()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final jt()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/email/mail/store/imap/d;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
