.class public final Lorg/owasp/html/A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final cIj:[Ljava/lang/String;


# instance fields
.field private final cIh:Lorg/owasp/html/C;

.field private final cIi:Lorg/owasp/html/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/owasp/html/B",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/owasp/html/A;->cIj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/owasp/html/N;Lorg/owasp/html/z;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/owasp/html/N;",
            "Lorg/owasp/html/z",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/owasp/html/C;

    invoke-direct {v0, p1}, Lorg/owasp/html/C;-><init>(Lorg/owasp/html/N;)V

    iput-object v0, p0, Lorg/owasp/html/A;->cIh:Lorg/owasp/html/C;

    .line 62
    new-instance v0, Lorg/owasp/html/B;

    iget-object v1, p0, Lorg/owasp/html/A;->cIh:Lorg/owasp/html/C;

    invoke-direct {v0, v1, p2, p3}, Lorg/owasp/html/B;-><init>(Lorg/owasp/html/C;Lorg/owasp/html/z;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/owasp/html/A;->cIi:Lorg/owasp/html/B;

    .line 63
    return-void
.end method

.method static synthetic kK()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/owasp/html/A;->cIj:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/owasp/html/M;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/owasp/html/A;->cIi:Lorg/owasp/html/B;

    iput-object p1, v0, Lorg/owasp/html/B;->cIk:Lorg/owasp/html/N;

    .line 71
    return-void
.end method

.method public final acb()Lorg/owasp/html/N;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/owasp/html/A;->cIh:Lorg/owasp/html/C;

    return-object v0
.end method

.method public final acc()Lorg/owasp/html/M;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/owasp/html/A;->cIi:Lorg/owasp/html/B;

    return-object v0
.end method
