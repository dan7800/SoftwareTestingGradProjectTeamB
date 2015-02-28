.class public final Lcom/android/mail/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final akJ:Lcom/android/mail/b/h;

.field public final akK:Lcom/android/mail/b/k;


# direct methods
.method public constructor <init>(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    .line 120
    iput-object p2, p0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    .line 121
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 129
    goto :goto_0

    .line 132
    :cond_3
    check-cast p1, Lcom/android/mail/b/i;

    .line 134
    iget-object v2, p0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    iget-object v3, p1, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    invoke-virtual {v2, v3}, Lcom/android/mail/b/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 136
    goto :goto_0

    .line 134
    :cond_5
    iget-object v2, p1, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    if-nez v2, :cond_4

    .line 139
    :cond_6
    iget-object v2, p0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    iget-object v3, p1, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 141
    goto :goto_0

    .line 139
    :cond_7
    iget-object v2, p1, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    invoke-virtual {v0}, Lcom/android/mail/b/h;->hashCode()I

    move-result v0

    .line 150
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 151
    return v0

    :cond_1
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    invoke-virtual {v0}, Lcom/android/mail/b/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
