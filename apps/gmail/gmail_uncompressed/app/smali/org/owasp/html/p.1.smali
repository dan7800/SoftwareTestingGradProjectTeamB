.class public interface abstract Lorg/owasp/html/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final cHX:Lorg/owasp/html/p;

.field public static final cHY:Lorg/owasp/html/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/owasp/html/q;

    invoke-direct {v0}, Lorg/owasp/html/q;-><init>()V

    sput-object v0, Lorg/owasp/html/p;->cHX:Lorg/owasp/html/p;

    .line 110
    new-instance v0, Lorg/owasp/html/r;

    invoke-direct {v0}, Lorg/owasp/html/r;-><init>()V

    sput-object v0, Lorg/owasp/html/p;->cHY:Lorg/owasp/html/p;

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
