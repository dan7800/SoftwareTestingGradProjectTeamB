.class final Lcom/android/email/mail/store/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public QL:Z

.field final synthetic QM:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/Pop3Store;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/email/mail/store/d;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 799
    const-string v0, "STLS %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/mail/store/d;->QL:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
