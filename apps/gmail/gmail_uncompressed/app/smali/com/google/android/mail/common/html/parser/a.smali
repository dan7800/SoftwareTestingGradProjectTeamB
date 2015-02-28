.class public final Lcom/google/android/mail/common/html/parser/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cpN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/mail/common/html/parser/a;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-string v2, "Attribute name can not be null"

    invoke-static {p1, v2}, Lcom/google/android/mail/common/base/G;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    if-nez p3, :cond_0

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    const-string v1, "Only ENUM_TYPE can have values != null"

    invoke-static {v0, v1}, Lcom/google/android/mail/common/base/G;->c(ZLjava/lang/Object;)V

    .line 184
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/a;->name:Ljava/lang/String;

    .line 185
    iput p2, p0, Lcom/google/android/mail/common/html/parser/a;->type:I

    .line 186
    iput-object p3, p0, Lcom/google/android/mail/common/html/parser/a;->cpN:Ljava/util/Set;

    .line 187
    return-void

    :cond_0
    move v2, v1

    .line 182
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 223
    if-ne p1, p0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 226
    :cond_0
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/a;

    if-eqz v0, :cond_1

    .line 227
    check-cast p1, Lcom/google/android/mail/common/html/parser/a;

    .line 228
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/a;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/mail/common/html/parser/a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/a;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/a;->name:Ljava/lang/String;

    return-object v0
.end method
