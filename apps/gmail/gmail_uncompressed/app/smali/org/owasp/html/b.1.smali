.class public interface abstract Lorg/owasp/html/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final cGE:Lorg/owasp/html/b;

.field public static final cGF:Lorg/owasp/html/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lorg/owasp/html/c;

    invoke-direct {v0}, Lorg/owasp/html/c;-><init>()V

    sput-object v0, Lorg/owasp/html/b;->cGE:Lorg/owasp/html/b;

    .line 100
    new-instance v0, Lorg/owasp/html/d;

    invoke-direct {v0}, Lorg/owasp/html/d;-><init>()V

    sput-object v0, Lorg/owasp/html/b;->cGF:Lorg/owasp/html/b;

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
