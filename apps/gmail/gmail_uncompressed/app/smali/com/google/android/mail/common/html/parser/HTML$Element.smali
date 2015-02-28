.class public final Lcom/google/android/mail/common/html/parser/HTML$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cpO:Z

.field private final cpP:Z

.field private final cpQ:Z

.field private final cpR:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZLcom/google/android/mail/common/html/parser/HTML$Element$Flow;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "Element name can not be null"

    invoke-static {p1, v0}, Lcom/google/android/mail/common/base/G;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "Element flow can not be null"

    invoke-static {p6, v0}, Lcom/google/android/mail/common/base/G;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->type:I

    .line 74
    iput-boolean p3, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->cpO:Z

    .line 75
    iput-boolean p4, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->cpP:Z

    .line 76
    iput-boolean p5, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->cpQ:Z

    .line 77
    iput-object p6, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->cpR:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    .line 78
    return-void
.end method


# virtual methods
.method public final Wc()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->cpQ:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 131
    if-ne p1, p0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 134
    :cond_0
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HTML$Element;

    if-eqz v0, :cond_1

    .line 135
    check-cast p1, Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 136
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/mail/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->cpO:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    return-object v0
.end method
