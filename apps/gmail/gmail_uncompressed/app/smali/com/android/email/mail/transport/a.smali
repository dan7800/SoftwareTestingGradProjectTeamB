.class public final Lcom/android/email/mail/transport/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Rr:I

.field private Rs:[Ljava/lang/String;

.field private final Rt:Ljava/lang/StringBuilder;

.field private mPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/transport/a;->Rt:Ljava/lang/StringBuilder;

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/email/mail/transport/a;->Rr:I

    .line 38
    invoke-direct {p0}, Lcom/android/email/mail/transport/a;->jR()V

    .line 39
    return-void
.end method

.method private N(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/mail/transport/a;->Rs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/email/mail/transport/a;->mPos:I

    aput-object p1, v0, v1

    .line 48
    iget v0, p0, Lcom/android/email/mail/transport/a;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/mail/transport/a;->mPos:I

    .line 49
    iget v0, p0, Lcom/android/email/mail/transport/a;->mPos:I

    iget v1, p0, Lcom/android/email/mail/transport/a;->Rr:I

    if-lt v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/transport/a;->mPos:I

    .line 52
    :cond_0
    return-void
.end method

.method private jR()V
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/email/mail/transport/a;->Rr:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/mail/transport/a;->Rs:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method private jS()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/mail/transport/a;->Rt:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/email/mail/transport/a;->Rt:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/a;->N(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/email/mail/transport/a;->Rt:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    return-void
.end method

.method private jT()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/email/mail/transport/a;->jS()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget v2, p0, Lcom/android/email/mail/transport/a;->mPos:I

    .line 89
    iget v0, p0, Lcom/android/email/mail/transport/a;->mPos:I

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/transport/a;->Rs:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 92
    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/android/email/mail/transport/a;->Rr:I

    rem-int/2addr v0, v3

    .line 96
    if-ne v0, v2, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    return-object v0
.end method


# virtual methods
.method public final O(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/email/mail/transport/a;->N(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public final ba(I)V
    .locals 5

    .prologue
    .line 66
    const/16 v0, 0x20

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/email/mail/transport/a;->Rt:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/android/email/mail/transport/a;->jS()V

    goto :goto_0

    .line 70
    :cond_2
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/email/mail/transport/a;->Rt:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final iW()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/email/mail/transport/a;->jT()[Ljava/lang/String;

    move-result-object v0

    .line 109
    array-length v0, v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Last network activities:"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    invoke-direct {p0}, Lcom/android/email/mail/transport/a;->jT()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 115
    sget-object v5, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/email/mail/transport/a;->jR()V

    goto :goto_0
.end method
