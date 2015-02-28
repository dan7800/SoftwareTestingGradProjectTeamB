.class public final Lcom/android/email/service/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field UC:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field UD:Ljava/lang/String;

.field UE:Ljava/lang/String;

.field public UF:I

.field public UG:Z

.field public UH:Z

.field public UI:Z

.field public UJ:Z

.field public UK:Z

.field public UL:Z

.field public UM:I

.field public UN:Z

.field public UO:Z

.field public UP:Z

.field public UQ:I

.field public UR:Z

.field public US:Z

.field public UT:Z

.field public UU:Z

.field public UV:[Ljava/lang/CharSequence;

.field public UW:[Ljava/lang/CharSequence;

.field public UX:I

.field public UY:Ljava/lang/String;

.field public UZ:Z

.field public Va:Z

.field public Vb:Z

.field public Vc:Z

.field public Vd:Z

.field public accountType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public port:I

.field public protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Protocol: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v0, p0, Lcom/android/email/service/o;->UC:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-string v0, "Local"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, " , Account Type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v0, p0, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    const-string v0, "Remote"

    goto :goto_0
.end method
