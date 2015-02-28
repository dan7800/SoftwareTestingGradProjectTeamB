.class final Lcom/android/email/provider/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final PJ:J

.field final synthetic Tm:Lcom/android/email/provider/EmailProvider;

.field private final Tv:Ljava/lang/String;

.field private final Tw:Landroid/accounts/Account;


# direct methods
.method private constructor <init>(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;J)V
    .locals 0

    .prologue
    .line 6274
    iput-object p1, p0, Lcom/android/email/provider/v;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6275
    iput-object p2, p0, Lcom/android/email/provider/v;->Tv:Ljava/lang/String;

    .line 6276
    iput-object p3, p0, Lcom/android/email/provider/v;->Tw:Landroid/accounts/Account;

    .line 6277
    iput-wide p4, p0, Lcom/android/email/provider/v;->PJ:J

    .line 6278
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;JB)V
    .locals 0

    .prologue
    .line 6268
    invoke-direct/range {p0 .. p5}, Lcom/android/email/provider/v;-><init>(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;J)V

    return-void
.end method

.method static synthetic a(Lcom/android/email/provider/v;)Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 6268
    iget-object v0, p0, Lcom/android/email/provider/v;->Tw:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic b(Lcom/android/email/provider/v;)J
    .locals 2

    .prologue
    .line 6268
    iget-wide v0, p0, Lcom/android/email/provider/v;->PJ:J

    return-wide v0
.end method

.method static synthetic c(Lcom/android/email/provider/v;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6268
    iget-object v0, p0, Lcom/android/email/provider/v;->Tv:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6282
    if-ne p0, p1, :cond_1

    .line 6291
    :cond_0
    :goto_0
    return v0

    .line 6285
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 6286
    goto :goto_0

    .line 6289
    :cond_3
    check-cast p1, Lcom/android/email/provider/v;

    .line 6291
    iget-object v2, p0, Lcom/android/email/provider/v;->Tw:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/android/email/provider/v;->Tw:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/android/email/provider/v;->PJ:J

    iget-wide v4, p1, Lcom/android/email/provider/v;->PJ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/email/provider/v;->Tv:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/email/provider/v;->Tv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 6298
    iget-object v0, p0, Lcom/android/email/provider/v;->Tv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 6299
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/email/provider/v;->Tw:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6300
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/email/provider/v;->PJ:J

    iget-wide v4, p0, Lcom/android/email/provider/v;->PJ:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 6301
    return v0
.end method
