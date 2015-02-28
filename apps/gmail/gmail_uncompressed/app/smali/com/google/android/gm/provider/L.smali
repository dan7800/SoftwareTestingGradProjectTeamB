.class final Lcom/google/android/gm/provider/L;
.super Lcom/google/android/gm/U;
.source "SourceFile"


# instance fields
.field final aPP:J

.field final synthetic bfF:Lcom/google/android/gm/provider/GmailProvider;

.field final bfH:Z

.field final mAccount:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 3817
    iput-object p1, p0, Lcom/google/android/gm/provider/L;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-direct {p0}, Lcom/google/android/gm/U;-><init>()V

    .line 3818
    iput-object p2, p0, Lcom/google/android/gm/provider/L;->mAccount:Ljava/lang/String;

    .line 3819
    iput-wide p3, p0, Lcom/google/android/gm/provider/L;->aPP:J

    .line 3820
    iput-boolean p5, p0, Lcom/google/android/gm/provider/L;->bfH:Z

    .line 3821
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZB)V
    .locals 1

    .prologue
    .line 3811
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gm/provider/L;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method protected final CY()Lcom/google/android/gm/U;
    .locals 7

    .prologue
    .line 3829
    new-instance v1, Lcom/google/android/gm/provider/L;

    iget-object v2, p0, Lcom/google/android/gm/provider/L;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    iget-object v3, p0, Lcom/google/android/gm/provider/L;->mAccount:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gm/provider/L;->aPP:J

    iget-boolean v6, p0, Lcom/google/android/gm/provider/L;->bfH:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/L;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZ)V

    return-object v1
.end method

.method public final Da()Z
    .locals 1

    .prologue
    .line 3834
    iget-boolean v0, p0, Lcom/google/android/gm/provider/L;->bfH:Z

    return v0
.end method
